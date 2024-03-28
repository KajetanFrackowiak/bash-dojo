#Sortowanie malejaco, numerowanie linii, zapisanie pierwszych 20 linii do pliku lista.txt
curl -s https://mhyla.com/repo/cars.txt | sort -r | nl | head -n 20 > lista.txt