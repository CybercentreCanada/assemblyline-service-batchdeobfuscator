import pytest

from batch_deobfuscator.batch_interpreter import BatchDeobfuscator


class TestUnittests:
    @staticmethod
    def test_sample1():
        deobfuscator = BatchDeobfuscator()
        deobfuscator.interpret_command("set WALLET=43DTEF92be6XcPj5Z7U")
        res = deobfuscator.normalize_command("echo %WALLET%")
        assert res == "echo 43DTEF92be6XcPj5Z7U"

    @staticmethod
    def test_sample2():
        deobfuscator = BatchDeobfuscator()
        deobfuscator.interpret_command("set WALLET=43DTEF92be6XcPj5Z7U")
        cmd = 'for /f "delims=." %%a in ("%WALLET%") do set WALLET_BASE=%%a'
        res = deobfuscator.normalize_command(cmd)
        assert res == 'for /f "delims=." %%a in ("43DTEF92be6XcPj5Z7U") do set WALLET_BASE=%%a'

    @staticmethod
    def test_sample3():
        deobfuscator = BatchDeobfuscator()
        cmd = "echo ERROR: Wrong wallet address length (should be 106 or 95): %WALLET_BASE_LEN%"
        res = deobfuscator.normalize_command(cmd)
        assert res == "echo ERROR: Wrong wallet address length (should be 106 or 95):"

    @staticmethod
    def test_sample4():
        deobfuscator = BatchDeobfuscator()
        cmd1 = 'echo tasklist /fi "imagename eq jin.exe" ^| find ":" ^>NUL\n'
        cmd2 = [x for x in deobfuscator.get_commands(cmd1)]
        assert cmd2 == ['echo tasklist /fi "imagename eq jin.exe" ^| find ":" ^>NUL']
        cmd3 = deobfuscator.normalize_command(cmd2[0])
        assert cmd3 == 'echo tasklist /fi "imagename eq jin.exe" ^| find ":" ^>NUL'
        cmd4 = [x for x in deobfuscator.get_commands(cmd3)]
        assert cmd4 == ['echo tasklist /fi "imagename eq jin.exe" ^| find ":" ^>NUL']

    @staticmethod
    def test_sample5():
        deobfuscator = BatchDeobfuscator()
        res = deobfuscator.normalize_command("echo %NUMBER_OF_PROCESSORS%")
        assert res == "echo 4"

        cmd = 'set /a "EXP_MONERO_HASHRATE = %NUMBER_OF_PROCESSORS% * 700 / 1000"'
        cmd2 = deobfuscator.normalize_command(cmd)
        deobfuscator.interpret_command(cmd2)
        cmd3 = deobfuscator.normalize_command("echo %EXP_MONERO_HASHRATE%")
        assert cmd3 == "echo (4 * 700 / 1000)"

    @staticmethod
    @pytest.mark.parametrize(
        "var, echo, result",
        [
            # Simple
            # No space
            ("set EXP=43", "echo *%EXP%*", "echo *43*"),
            ("set EXP=43", "echo *%EXP %*", "echo **"),
            ("set EXP=43", "echo *% EXP%*", "echo **"),
            ("set EXP=43", "echo *% EXP %*", "echo **"),
            # Space after var
            ("set EXP =43", "echo *%EXP%*", "echo **"),
            ("set EXP =43", "echo *%EXP %*", "echo *43*"),
            ("set EXP =43", "echo *% EXP%*", "echo **"),
            ("set EXP =43", "echo *% EXP %*", "echo **"),
            # Space after equal
            ("set EXP= 43", "echo *%EXP%*", "echo * 43*"),
            ("set EXP= 43", "echo *%EXP %*", "echo **"),
            ("set EXP= 43", "echo *% EXP%*", "echo **"),
            ("set EXP= 43", "echo *% EXP %*", "echo **"),
            # Space after value
            ("set EXP=43 ", "echo *%EXP%*", "echo *43 *"),
            ("set EXP=43 ", "echo *%EXP %*", "echo **"),
            ("set EXP=43 ", "echo *% EXP%*", "echo **"),
            ("set EXP=43 ", "echo *% EXP %*", "echo **"),
            # Space after var and after equal
            ("set EXP = 43", "echo *%EXP%*", "echo **"),
            ("set EXP = 43", "echo *%EXP %*", "echo * 43*"),
            ("set EXP = 43", "echo *% EXP%*", "echo **"),
            ("set EXP = 43", "echo *% EXP %*", "echo **"),
            # Double quote
            # Single quote for both var and value
            ("set \"'EXP=43'\"", "echo *%EXP%*", "echo **"),
            ("set \"'EXP=43'\"", "echo *%EXP %*", "echo **"),
            ("set \"'EXP=43'\"", "echo *% EXP%*", "echo **"),
            ("set \"'EXP=43'\"", "echo *% EXP %*", "echo **"),
            ("set \"'EXP=43'\"", "echo *%'EXP%*", "echo *43'*"),
            # Space after var
            ('set "EXP =43"', "echo *%EXP%*", "echo **"),
            ('set "EXP =43"', "echo *%EXP %*", "echo *43*"),
            ('set "EXP =43"', "echo *% EXP%*", "echo **"),
            ('set "EXP =43"', "echo *% EXP %*", "echo **"),
            # Space after equal
            ('set "EXP= 43"', "echo *%EXP%*", "echo * 43*"),
            ('set "EXP= 43"', "echo *%EXP %*", "echo **"),
            ('set "EXP= 43"', "echo *% EXP%*", "echo **"),
            ('set "EXP= 43"', "echo *% EXP %*", "echo **"),
            # Space after var and after equal
            ('set "EXP = 43"', "echo *%EXP%*", "echo **"),
            ('set "EXP = 43"', "echo *%EXP %*", "echo * 43*"),
            ('set "EXP = 43"', "echo *% EXP%*", "echo **"),
            ('set "EXP = 43"', "echo *% EXP %*", "echo **"),
            # Space before var, after var, after equal and after value
            ('set " EXP = 43 "', "echo *%EXP%*", "echo **"),
            ('set " EXP = 43 "', "echo *%EXP %*", "echo * 43 *"),
            ('set " EXP = 43 "', "echo *% EXP%*", "echo **"),
            ('set " EXP = 43 "', "echo *% EXP %*", "echo **"),
            # Single quote
            ("set \"EXP='43'\"", "echo *%EXP%*", "echo *'43'*"),
            ("set \"EXP=' 43'\"", "echo *%EXP%*", "echo *' 43'*"),
            ("set \"EXP =' 43'\"", "echo *%EXP %*", "echo *' 43'*"),
            ("set \"EXP = ' 43'\"", "echo *%EXP %*", "echo * ' 43'*"),
            ("set 'EXP=\"43\"'", "echo *%'EXP%*", 'echo *"43"\'*'),
            ("set \" EXP '=43 ' \" ", "echo *%EXP '%*", "echo *43 ' *"),
            # Double quote as value
            ('set EXP =43^"', "echo *%EXP %*", 'echo *43"*'),
            ('set EXP =43^"3', "echo *%EXP %*", 'echo *43"3*'),
            ('set "EXP=43^""', "echo *%EXP%*", 'echo *43"*'),
            ('set "EXP=43^"3"', "echo *%EXP%*", 'echo *43"3*'),
            ('set EXP=43^"^|', "echo *%EXP%*", 'echo *43"|*'),
            # Getting into really weird stuff
            ('set ""EXP=43"', 'echo *%"EXP%*', "echo *43*"),
            ('set ""EXP=4"3', 'echo *%"EXP%*', "echo *4*"),
            ('set """EXP=43"', "echo *%EXP%*", "echo **"),
            ('set """EXP=43"', 'echo *%""EXP%*', "echo *43*"),
            ('set "E^XP=43"', "echo *%EXP%*", "echo *43*"),
            ('set " ^"EXP=43"', 'echo *%^"EXP%*', "echo *43*"),
            ('set ^"EXP=43', "echo *%EXP%*", "echo *43*"),
            ('set E^"XP=43', 'echo *%E"XP%*', "echo *43*"),
            ('set E"XP=4"3', 'echo *%E"XP%*', 'echo *4"3*'),
            ('set E"XP=4^""3', 'echo *%E"XP%*', 'echo *4""3*'),
            ('set EXP^"=43', 'echo *%EXP"%*', "echo *43*"),
            ("set EXP=43^^", "echo *%EXP%*", "echo *43*"),
            ("set EXP=4^^3", "echo *%EXP%*", "echo *43*"),
            ("set EXP=43^^ ", "echo *%EXP%*", "echo *43 *"),
            ("set E^^XP=43", "echo *%E^XP%*", "echo *43*"),
            ('set ^"E^^XP=43"', "echo *%E^XP%*", "echo *43*"),
            ('set ^"E^^XP=43^"', "echo *%E^XP%*", "echo *43*"),
            ('set ^"E^^XP=43', "echo *%E^XP%*", "echo *43*"),
            ('set "E^^XP=43"', "echo *%E^^XP%*", "echo *43*"),
            ('set "E^^XP=43', "echo *%E^^XP%*", "echo *43*"),
            ('set E^"XP=4^"3', 'echo *%E"XP%*', 'echo *4"3*'),
            ('set ^"EXP=4^"3', "echo *%EXP%*", "echo *4*"),
            ('set ^"EXP= 4^"3', "echo *%EXP%*", "echo * 4*"),
            ('set ^"E^"XP=43"', 'echo *%E"XP%*', "echo *43*"),
            ('set ^"E^"XP=4^"3', 'echo *%E"XP%*', "echo *4*"),
            ('set ^"E"XP=4^"3"', 'echo *%E"XP%*', 'echo *4"3*'),
            ('set ^"E"XP=4^"3""', 'echo *%E"XP%*', 'echo *4"3"*'),
            ('set "E"XP=4^"3""', 'echo *%E"XP%*', 'echo *4"3"*'),
            ('set ^"E""XP=4^"3', 'echo *%E""XP%*', "echo *4*"),
            ('set "E^"XP=43"', 'echo *%E^"XP%*', "echo *43*"),
            ('set "E^"X"P=43"', 'echo *%E^"X"P%*', "echo *43*"),
            ('set E"E^"XP=43"', 'echo *%E"E^"XP%*', 'echo *43"*'),
            ('set E"E^"XP=43', 'echo *%E"E^"XP%*', "echo *43*"),
            ('set E^"E"X"P=43"', 'echo *%E"E"X"P%*', 'echo *43"*'),
            ('set E"E^"X"P=43"', 'echo *%E"E^"X"P%*', 'echo *43"*'),
            ("set ^|EXP=43", "echo *%|EXP%*", "echo *43*"),
            # TODO: Really, how should we handle that?
            # 'set ""EXP=43'
            # 'set'
            # 'set E'
            # 'set EXP'
            # 'set ^"E^"XP=43'
            # 'set ^"E""XP=43'
            #
            # option a
            ('set /a "EXP = 4 * 700 / 1000"', "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ("set /a EXP = 4 * 700 / 1000", "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ('set /a ^"EXP = 4 * 700 / 1000"', "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ('set /a ^"E^"XP = 4 * 700 / 1000^"', "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ('set /a "EXP^" = 4 * 700 / 1000"', "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ("set /a EX^^P = 4 * 700 / 1000", "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ("set /a EX^P = 4 * 700 / 1000", "echo *%EXP%*", "echo *(4 * 700 / 1000)*"),
            ("set /a EXP = 4 * OTHER", "echo *%EXP%*", "echo *(4 * OTHER)*"),
            # TODO: Really, how should we handle that?
            # 'set /a "EX|P = 4 * 700 / 1000'
            # "set /a EX|P = 4 * 700 / 1000"
            # "set /a EX^|P = 4 * 700 / 1000"
            #
            # option p
            ('set /p "EXP"="What is"', 'echo *%EXP"%*', "echo *__input__*"),
            ('set /p EXP="What is', "echo *%EXP%*", "echo *__input__*"),
            ("set /p EXP=What is", "echo *%EXP%*", "echo *__input__*"),
            ('set /p EXP "=What is', 'echo *%EXP "%*', "echo *__input__*"),
            ('set /p  EXP "=What is', 'echo *%EXP "%*', "echo *__input__*"),
            ('set /p "EXP =What is', "echo *%EXP %*", "echo *__input__*"),
            ('set /p "EXP ="What is"', "echo *%EXP %*", "echo *__input__*"),
            ('set /p E"XP =What is', 'echo *%E"XP %*', "echo *__input__*"),
            ('set /p E^"XP ="What is"', 'echo *%E"XP %*', "echo *__input__*"),
            ('set /p "E^"XP ="What is"', 'echo *%E^"XP %*', "echo *__input__*"),
            ('set /p E^"XP =What is', 'echo *%E"XP %*', "echo *__input__*"),
            ('set /p "E^|XP =What is', "echo *%E^|XP %*", "echo *__input__*"),
            ("set /p E^|XP =What is", "echo *%E|XP %*", "echo *__input__*"),
            ('set /p ^"EXP =What is', "echo *%EXP %*", "echo *__input__*"),
            ("set /p ^|EXP =What is", "echo *%|EXP %*", "echo *__input__*"),
            # TODO: Really, how should we handle that?
            # 'set /p "EXP "=What is'
            # 'set /p "E^"XP =What is'
        ],
    )
    def test_sample6(var, echo, result):
        deobfuscator = BatchDeobfuscator()
        deobfuscator.interpret_command(var)
        res = deobfuscator.normalize_command(echo)
        assert res == result

    @staticmethod
    def test_sample7():
        # If you specify only a variable and an equal sign (without <string>) for the set command,
        # the <string> value associated with the variable is cleared (as if the variable is not there).
        deobfuscator = BatchDeobfuscator()
        assert "exp" not in deobfuscator.variables
        res = deobfuscator.normalize_command("echo *%EXP%*")
        assert res == "echo **"
        deobfuscator.interpret_command("set EXP=43")
        assert "exp" in deobfuscator.variables
        res = deobfuscator.normalize_command("echo *%EXP%*")
        assert res == "echo *43*"
        deobfuscator.interpret_command("set EXP= ")
        assert "exp" in deobfuscator.variables
        res = deobfuscator.normalize_command("echo *%EXP%*")
        assert res == "echo * *"
        deobfuscator.interpret_command("set EXP=")
        assert "exp" not in deobfuscator.variables
        res = deobfuscator.normalize_command("echo *%EXP%*")
        assert res == "echo **"

    @staticmethod
    @pytest.mark.skip()
    def test_beautify_strlen_function():
        # Figure out if it translate somewhat correctly, and what it does...
        # Taken from 6c46550db4dcb3f5171c69c5f1723362f99ec0f16f6d7ab61b6f8d169a6e6bc8
        """
        ":strlen string len"
        "setlocal EnableDelayedExpansion"
        'set "token=#%~1" & set "len=0"'
        "for /L %%A in (12,-1,0) do ("
        '  set/A "len|=1<<%%A"'
        '  for %%B in (!len!) do if "!token:~%%B,1!"=="" set/A "len&=~1<<%%A"'
        ")"
        """

    @staticmethod
    @pytest.mark.skip()
    def test_handle_if_statement_with_sets():
        # The value of ADMIN becomes "1) else (set ADMIN=0)" so it gets complicated to read the "unobfuscated" result
        # Taken from 6c46550db4dcb3f5171c69c5f1723362f99ec0f16f6d7ab61b6f8d169a6e6bc8
        """
        "net session >nul 2>&1"
        "if %errorLevel% == 0 (set ADMIN=1) else (set ADMIN=0)"
        "if %ADMIN% == 1 ("
        "  where sc >NUL"
        "  if not %errorlevel% == 0 ("
        '    echo ERROR: This script requires "sc" utility to work correctly'
        "    exit /b 1"
        "  )"
        ")"
        """
        deobfuscator = BatchDeobfuscator()
        cmd1 = "if %errorLevel% == 0 (set ADMIN=1) else (set ADMIN=0)"
        print("cmd1", cmd1)
        cmd2 = deobfuscator.normalize_command(cmd1)
        print("cmd2", cmd2)
        deobfuscator.interpret_command(cmd2)
        res = deobfuscator.normalize_command("echo *%ADMIN%*")
        assert res == "echo *0*"
