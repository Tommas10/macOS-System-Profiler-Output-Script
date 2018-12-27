#! /bin/bash

#There are three different levels of detail that can be used:
# Option 1 - basic (basic hardware and network information)
# Option 2 - mini (report with no personal information, such as Serial Number of Hardware UUID)
# Option 3 - full (all available information)

# This script file created by Tommas Huang

echo "Would you output system_profiler?:"
select delconf in "1" "2" "3"
do
    echo "You selected :" $delconf
    case $delconf in
        1 ) system_profiler -detailLevel basic > ~/Desktop/system_report_basic.txt; break;;
        2 ) system_profiler -detailLevel mini > ~/Desktop/system_report_mini.txt; break;;
        3 ) system_profiler -detailLevel full > ~/Desktop/system_report_full.txt; break;;
    esac
done