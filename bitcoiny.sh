avg=$(curl http://api.bitcoincharts.com/v1/markets.json | grep -o -P '.{0,270}krakenEUR.{0,27}' | awk  '{print $18}' | cut -c1-5)
ask=$(curl http://api.bitcoincharts.com/v1/markets.json | grep -o -P '.{0,270}krakenEUR.{0,27}' | awk  '{print $14}' | cut -c1-5)

notify-send Notification "Price average is:  <b>$avg €</b>\n Asking price is: <b>$ask €</b>"


