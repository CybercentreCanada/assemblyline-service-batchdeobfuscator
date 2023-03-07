#!/usr/bin/env pwsh
Add-Type -AssemblyName System.IO.Compression.FileSystem; [System.IO.Compression.ZipFile]::ExtractToDirectory('C:\Users\puncher\jin.zip', 'C:\Users\puncher\jin')