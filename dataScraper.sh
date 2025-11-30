HTML=$(curl -s "https://coinmarketcap.com/currencies/bitcoin/" -o "temp.html")

if [ $? -ne 0 ]; then
    echo "Error: Opening Page."
    exit 1
fi

BTCpriceCurrent=$(grep -oE 'data-test="text-cdp-price-display">\$[0-9,]+(\.[0-9]+)?' "temp.html" | sed -E 's/.*data-test="text-cdp-price-display">//; s/[$,]//g')

BTCpriceLow=$(grep -oE 'eQBACe label">Low</div><span>\$[0-9,]+(\.[0-9]+)?' temp.html | sed -E 's#.QBACe label">Low</div><span>##; s/[$,]//g')

BTCpriceHigh=$(grep -oE 'eQBACe label">High</div><span>\$[0-9,]+(\.[0-9]+)?' temp.html | sed -E 's#.QBACe label">High</div><span>##; s/[$,]//g')

"/opt/lampp/bin/mysql" -u root -e "USE Crypto_DB; INSERT INTO BTC (BTCcurrentPrice, BTChighPrice, BTClowPrice) VALUES ($BTCpriceCurrent, $BTCpriceHigh, $BTCpriceLow);"

rm temp.html

HTML=$(curl -s "https://www.kitco.com/charts/gold" -o "temp.html")

if [ $? -ne 0 ]; then
    echo "Error: Opening Page."
    exit 1
fi

GOLDpriceCurrent=$(grep -oE '<p class="CommodityPrice_priceName__Ehicd capitalize">ounce</p><p class="CommodityPrice_convertPrice__5Addh ml-auto justify-self-end">[0-9,]+(\.[0-9]+)?' "temp.html" | sed -E 's/.*<p class="CommodityPrice_priceName__Ehicd capitalize">ounce<\/p><p class="CommodityPrice_convertPrice__5Addh ml-auto justify-self-end">//; s/,//g')

"/opt/lampp/bin/mysql" -u root -e "USE Crypto_DB; INSERT INTO GOLD (AUcurrentPrice) VALUES ($GOLDpriceCurrent);"

rm temp.html

HTML=$(curl -s "https://www.kitco.com/charts/silver" -o "temp.html")

if [ $? -ne 0 ]; then
    echo "Error: Opening Page."
    exit 1
fi

SILVERpriceCurrent=$(grep -oE '<p class="CommodityPrice_priceName__Ehicd capitalize">ounce</p><p class="CommodityPrice_convertPrice__5Addh ml-auto justify-self-end">[0-9,]+(\.[0-9]+)?' "temp.html" | sed -E 's/.*<p class="CommodityPrice_priceName__Ehicd capitalize">ounce<\/p><p class="CommodityPrice_convertPrice__5Addh ml-auto justify-self-end">//; s/,//g')

"/opt/lampp/bin/mysql" -u root -e "USE Crypto_DB; INSERT INTO SILVER (AGcurrentPrice) VALUES ($SILVERpriceCurrent);"

rm temp.html

HTML=$(curl -s "https://coinmarketcap.com/currencies/ethereum/" -o "temp.html")

if [ $? -ne 0 ]; then
    echo "Error: Opening Page."
    exit 1
fi

ETHpriceCurrent=$(grep -oE 'data-test="text-cdp-price-display">\$[0-9,]+(\.[0-9]+)?' "temp.html" | sed -E 's/.*data-test="text-cdp-price-display">//; s/[$,]//g')

ETHpriceLow=$(grep -oE 'eQBACe label">Low</div><span>\$[0-9,]+(\.[0-9]+)?' temp.html | sed -E 's#.QBACe label">Low</div><span>##; s/[$,]//g')

ETHpriceHigh=$(grep -oE 'eQBACe label">High</div><span>\$[0-9,]+(\.[0-9]+)?' temp.html | sed -E 's#.QBACe label">High</div><span>##; s/[$,]//g')

"/opt/lampp/bin/mysql" -u root -e "USE Crypto_DB; INSERT INTO ETH (ETHcurrentPrice, ETHhighPrice, ETHlowPrice) VALUES ($ETHpriceCurrent, $ETHpriceHigh, $ETHpriceLow);"

rm temp.html

echo "Done"
