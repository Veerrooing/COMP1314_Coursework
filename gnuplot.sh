#SQL executable path variable
SQL_PATH="/mnt/c/xampp/mysql/bin/mysql.exe"

# Generate BTC Current Price graph
$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, BTCcurrentPrice FROM BTC ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "BTCcurrentPrice_hourly.png"
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

# Generate BTC High Price graph
$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, BTChighPrice FROM BTC ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "BTCHighPrice_hourly.png"
set title "Bitcoin High Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "BTC High Price"
EOF

rm temp

# Generate BTC Low Price graph
$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, BTClowPrice FROM BTC ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "BTCLowPrice_hourly.png"
set title "Bitcoin Low Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "BTC Low Price"
EOF

rm temp

# Generate ETH Current Price graph

$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, ETHcurrentPrice FROM ETH ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "ETHcurrentPrice_hourly.png"
set title "Ethereum Current Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "ETH Current Price"
EOF

rm temp

# Generate ETH High Price graph
$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, ETHhighPrice FROM ETH ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "ETHHighPrice_hourly.png"
set title "Ethereum High Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "ETH High Price"
EOF

rm temp

# Generate ETH Low Price graph
$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, ETHlowPrice FROM ETH ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "ETHLowPrice_hourly.png"
set title "Ethereum Low Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "ETH Low Price"
EOF

rm temp

#Generate AU Current Price graph
$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, AUcurrentPrice FROM GOLD ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "AUcurrentPrice_hourly.png"
set title "Gold Current Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.0f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "Gold Current Price"
EOF

rm temp

$SQL_PATH -u root -B -N -e "USE Crypto_DB; SELECT timestamp, AGcurrentPrice FROM SILVER ORDER BY timestamp;" | \
  awk '{printf "%s %s\t%s\n", $1, $2, $3}' | tr -d '\r' > temp

gnuplot << EOF
set terminal png size 1200,800
set output "AGcurrentPrice_hourly.png"
set title "Silver Current Price"
set xlabel "Time"
set ylabel "Price (USD)"
set grid
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d %H:%M"
set xtics rotate
set ytics format "%.2f"
set datafile separator "\t"

plot 'temp' using 1:2 with lines lw 2 lc "blue" title "Silver Current Price"
EOF

rm temp

