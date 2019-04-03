cur_time=$(date --utc)
celsius1=$(cat /sys/class/thermal/thermal_zone0/temp | sed 's/.\{3\}$/.&/')
celsius2=$(cat /sys/class/thermal/thermal_zone1/temp | sed 's/.\{3\}$/.&/')
cpu0=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq)
cpu1=$(cat /sys/devices/system/cpu/cpu1/cpufreq/scaling_cur_freq)
cpu2=$(cat /sys/devices/system/cpu/cpu2/cpufreq/scaling_cur_freq)
cpu3=$(cat /sys/devices/system/cpu/cpu3/cpufreq/scaling_cur_freq)

echo "--------------------------"
echo "TIME: ${cur_time}"
echo "--------------------"
echo "CPU Temp: ${celsius1} °C"
echo "GPU Temp: ${celsius2} °C"
echo "--------------------"
echo "--------------------"
echo "CPU0 Freq: ${cpu0} Khz"
echo "CPU1 Freq: ${cpu1} Khz"
echo "CPU2 Freq: ${cpu2} Khz"
echo "CPU3 Freq: ${cpu3} Khz"
echo "--------------------------"
