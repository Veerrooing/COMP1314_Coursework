HTML=$(curl -s "https://coinmarketcap.com/currencies/bitcoin/" -o "temp.html")

if [ $? -ne 0 ]; then
    echo "Error: Opening Page."
    exit 1
fi

priceCurrent=$(grep -oE 'data-test="text-cdp-price-display">\$[0-9,]+(\.[0-9]+)?' "temp.html" | sed -E 's/.*data-test="text-cdp-price-display">//; s/[$,]//g')

priceLow=$(grep -oE 'eQBACe label">Low</div><span>\$[0-9,]+(\.[0-9]+)?' temp.html | sed -E 's#.QBACe label">Low</div><span>##; s/[$,]//g')

priceHigh=$(grep -oE 'eQBACe label">High</div><span>\$[0-9,]+(\.[0-9]+)?' temp.html | sed -E 's#.QBACe label">High</div><span>##; s/[$,]//g')


echo $priceCurrent
echo $priceHigh
echo $priceLow

"/opt/lampp/bin/mysql" -u root -e "USE Crypto_DB; INSERT INTO BTC (currentPrice, highPrice, lowPrice) VALUES ($priceCurrent, $priceHigh, $priceLow);"

rm temp.html
