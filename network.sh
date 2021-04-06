rxcurrent="$(($(cat /sys/class/net/*/statistics/rx_bytes | paste -sd '+')))"
txcurrent="$(($(cat /sys/class/net/*/statistics/tx_bytes | paste -sd '+')))"

echo -e "[▼ $((($rxcurrent/8000000))) MiB / ▲ $((($txcurrent/8000000))) MiB] | "
