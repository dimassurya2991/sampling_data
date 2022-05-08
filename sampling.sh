# A.Download file excel dari link github

wget -P ./data https://github.com/labusiam/dataset/raw/main/weather_data.xlsx

# B. Konvert setiap sheet pada file weather_data.xlsx

in2csv weather_data.xlsx --sheet "weather_2014" > /home/dimassurya/sampling_data/data/weather_2014.csv
in2csv weather_data.xlsx --sheet "weather_2015" > /home/dimassurya/sampling_data/data/weather_2015.csv

# C. Gabungkan Data weather 2014 dan 2015 menjadi 1 csv kemudian beri nama weather.csv. Selain itu hapus file weather_data.xlsx

csvstack weather_2014.csv weather_2015.csv > /home/dimassurya/sampling_data/data/weather.csv

rm weather_data.xlsx

# D. Lakukan sampling pada file weather.csv dengan rate 0.3 kemudian simpan kedalam file sample_weather.csv

cat weather.csv | sample -r 0.3 > /home/dimassurya/sampling_data/data/sample_weather.csv
