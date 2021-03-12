
echo off

Set CurrentDate=%DATE:~0,2%-%DATE:~3,2%-%DATE:~6,4%

Set CurrentHour=%time:~0,2%.%time:~3,2%.%time:~6,2%

:: Syntax:powercfg /batteryreport [ /output file_name ] [ /xml ] [ /duration days ]

:: /output file_name: Specify the path and file name to store the battery report HTML.
:: /output file_name /xml: Formats the battery report file as XML.
:: /duration days: Specifies the number of days to analyze for the report.


powercfg /batteryreport /OUTPUT "battery-report_%CurrentDate%_%CurrentHour%.html" /DURATION 14

powercfg /batteryreport /OUTPUT "battery-report_%CurrentDate%_%CurrentHour%.xml" /XML /DURATION 14

IF EXIST "battery-report.html" ( rename "battery-report.html" ::"battery-report_%CurrentDate%_%CurrentHour%.html") 