# WindowsBatteryReport_Automate
Tiny .bat file that uses Windows Battery Report.

Using this Windows tool, it generates both .xml and .html files, adding the actual date and time to the filenames. 

## Instructions:

 - Click open **Battery Report.bat**
 - It generates two files: .xml and .html.
 - Open the .html file to check the full report
 - You can use the .xml file for deep analysis with tools like Excel

## Brief code explaination:

 1. We create two variables:
     - CurrentDate: Stores the current date. Format: dd-mm-yyyy
     - CurrentHour: Stores the current time. Format: hh.mm.ss
 2. We use **powercfg /batteryreport /OUTPUT** to create our reports:
     - **Note*: **/DURATION 14** sets the report to analyze the last 14 days
     - FileName format: **battery-report_dd-mm-yyyy_hh.mm.ss**.html

**Note*: Battery Report allows you to chek your laptop battery's health, and more!
