$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"log-file\": *null,', '\"log-file\": \"C:\\Users\\puncher\\jin\\xmrig.log\",'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'