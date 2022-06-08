# Batch Deobfuscator Service
This module is based on the Batch Deobfuscator project found at [DissectMalware/batch_deobfuscator](https://github.com/DissectMalware/batch_deobfuscator) but improvement were made on the parsing of the SET command and the IF statements.

DissectMalware/batch_deobfuscator : Copyright (c) 2018 Malwrologist

# Possible Heuristics to add:
1. Having "call %VAR%" or "cmd /c %VAR%", or "%VAR%" as the start of a line. Calling/executing a variable is suspicious
2. Multiple adjacent environment variables for concatenation reassembly : set final=%com1%%com2%%com3%
3. Multiple string substitutions like %var:Z=t% or !var:e=7! or string removals like %var:@=%
    1. Maybe count how many substring/removal we do, and if too many, raise
    2. We can probably count how many variable usage there is per line and that would be a good indicator
4. Detect carret obfuscation in internal commands, like set and call words (s^et, c^a^ll, cal^l....)
5. Detect high frequency of obfuscation characters: , ; ^ " ( )
6. Unusual execution flags: /R and /V ?? (Should look for false positive)
7. FOR loop with command or variable execution in the do statement

# Improvement
It looks like https://github.com/bobbystacksmash/CMD-DeObfuscator (the `master` and `rewrite` branch) could be a source of ideas to improve this module and/or the underlying batch_deobfuscator module. See test test_unittests.py/test_bobbystacksmash from batch_deobfuscator for concrete examples.
