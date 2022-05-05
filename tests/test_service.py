import errno
import os
from collections import defaultdict
from pathlib import Path

import pytest
from assemblyline.common.identify import fileinfo
from assemblyline.odm.messages.task import Task as ServiceTask
from assemblyline_v4_service.common.request import ServiceRequest
from assemblyline_v4_service.common.task import Task
from cart import unpack_file

import batchdeobfuscator.batchdeobfuscator

TEST_DIR = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR = os.path.dirname(TEST_DIR)
SELF_LOCATION = os.environ.get("FULL_SELF_LOCATION", ROOT_DIR)
SAMPLES_LOCATION = os.environ.get("FULL_SAMPLES_LOCATION", None)


def find_sample(locations, sample):
    # Assume samples are carted
    sample = f"{sample}.cart"

    for location in locations:
        p = [path for path in Path(location).rglob(sample)]
        if len(p) == 1:
            return p[0]

    raise FileNotFoundError(errno.ENOENT, os.strerror(errno.ENOENT), sample)


def list_results(location):
    return [f.rstrip(".json") for f in os.listdir(os.path.join(location, "tests", "results"))]


@pytest.fixture()
def sample(request):
    sample_path = find_sample(request.cls.locations, request.param)
    unpack_file(sample_path, os.path.join("/tmp", request.param))
    yield request.param
    os.remove(os.path.join("/tmp", request.param))


def create_service_task(sample):
    fileinfo_keys = ["magic", "md5", "mime", "sha1", "sha256", "size", "type"]

    return ServiceTask(
        {
            "sid": 1,
            "metadata": {},
            "deep_scan": False,
            "service_name": "Not Important",
            "service_config": {},
            "fileinfo": {k: v for k, v in fileinfo(f"/tmp/{sample}").items() if k in fileinfo_keys},
            "filename": sample,
            "min_classification": "TLP:WHITE",
            "max_files": 501,
            "ttl": 3600,
        }
    )


class TestService:
    @classmethod
    def setup_class(cls):
        # Setup where the samples can be found
        cls.locations = [SELF_LOCATION, SAMPLES_LOCATION]

    @staticmethod
    @pytest.mark.parametrize("sample", list_results(SELF_LOCATION), indirect=True)
    # @pytest.mark.skip()
    def test_service(sample):
        overwrite_results = False  # Used temporarily to mass-correct tests

        cls = batchdeobfuscator.batchdeobfuscator.Batchdeobfuscator()
        cls.start()
        cls.ontologies = defaultdict(list)

        task = Task(create_service_task(sample=sample))
        service_request = ServiceRequest(task)

        cls.execute(service_request)

        correct_path = os.path.join(SELF_LOCATION, "tests", "results", sample, "deobfuscated_bat.bat")
        if os.path.exists(correct_path):
            with open(correct_path, "r") as f:
                correct_result = f.read()

            test_path = os.path.join(cls.working_directory, "deobfuscated_bat.bat")
            with open(test_path, "r") as f:
                test_result = f.read()

            if overwrite_results:
                if test_result != correct_result:
                    with open(correct_path, "w") as f:
                        f.write(test_result)
            else:
                assert test_result == correct_result
