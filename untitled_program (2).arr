use context essentials2021
include gdrive-sheets
include data-source
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end
kWh-wealthy-consumer-data 
#oppgave a) For å få en tabell med alle komponentene, la jeg inn koden fra dokumentet

  fun energi-to-number(str :: String) -> Number:

cases(Option) string-to-number(str):
    | some(a) => a
    | none => 100
  end
where:
  energi-to-number("0") is 0
energi-to-number("48") is 48
end
#oppgave b)  

energi-er-goy = transform-column(kWh-wealthy-consumer-data, "energi",  energi-to-number)
energi-er-goy
#for å tilfredstille testene i where-blokken, overførte jeg data fra type string til type number

distance-travelled-per-day = 30 
distance-per-unit-of-fuel = 3
energy-per-unit-of-fuel = 10

energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                       energy-per-unit-of-fuel
energy-per-day
#oppgave c) 

energiforbruk = sum(energi-er-goy, "energi")
energiforbruk
#oppgave d)

bar-chart(energi-er-goy, "komponent", "energi")
#oppgave e) visualiserina av data i tabellen 