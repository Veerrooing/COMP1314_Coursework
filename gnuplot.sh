# One-liner solution:
/mnt/c/xampp/mysql/bin/mysql.exe -u root -B -N -e "USE Crypto_DB; SELECT timestamp, BTCcurrentPrice FROM BTC ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "btc_hourly.png"
set title "Bitcoin Current Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "BTC Current Price"
EOF

rm temp