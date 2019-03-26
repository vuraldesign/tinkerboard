celsius1=$(cat /sys/class/thermal/thermal_zone1/temp | sed 's/.\{3\}$/.&/')
celsius2=$(cat /sys/class/thermal/thermal_zone2/temp | sed 's/.\{3\}$/.&/')
echo "--------------------"
echo "CPU Temp: ${celsius1} °C"
echo "GPU Temp: ${celsius2} °C"
echo "--------------------"
