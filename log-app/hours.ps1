<#
write ps1 script that calculates time in hours, from data like 12:41-14:39, 16:48-18:08 ...

Certainly! Here's a PowerShell script that calculates the total time in hours from a given input string in the format "start_time-end_time":

You can modify the $timeRanges array with your desired input. The script will calculate the time difference in hours for each time range and accumulate the total. Finally, it will display the total time in hours.

Please note that the script assumes the time ranges are provided in the correct format (e.g., "HH:mm-HH:mm").
#>

# Function to calculate time difference in hours
function CalculateTimeDifferenceInHours($startTime, $endTime) {
  $startTime = [datetime]::ParseExact($startTime, "HH:mm", $null)
  $endTime = [datetime]::ParseExact($endTime, "HH:mm", $null)
    
  $timeDifference = $endTime - $startTime
    
  return $timeDifference.TotalHours
}

# Input string with time ranges
$timeRanges = "12:41-14:39", "16:48-18:08"

$totalHours = 0

# Calculate total time in hours
foreach ($timeRange in $timeRanges) {
  $startEndTimes = $timeRange.Split("-")
  $startTime = $startEndTimes[0].Trim()
  $endTime = $startEndTimes[1].Trim()
    
  $totalHours += CalculateTimeDifferenceInHours $startTime $endTime
}

# Display the total time in hours
$totalHours
