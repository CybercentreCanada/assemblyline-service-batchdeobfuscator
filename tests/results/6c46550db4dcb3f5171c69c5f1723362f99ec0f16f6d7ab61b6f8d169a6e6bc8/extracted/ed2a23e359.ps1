$out = cat 'C:\Users\puncher\jin\config.json' | %%{$_ -replace '\"user\": *\".*\",', '\"user\": \"prx.na\",'} | Out-String; $out | Out-File -Encoding ASCII 'C:\Users\puncher\jin\config.json'