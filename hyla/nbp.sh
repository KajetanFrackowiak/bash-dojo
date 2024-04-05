#!bin/bash

# Funkcja do pobierania danych z API NBP dla podanego zakresu dat
get_data() {
    start_date=$1
    end_date=$2

    # Pobranie danych kursu USD do złotego z API NBP dla podanego zakresu dat
    curl -s "http://api.nbp.pl/api/exchangerates/rates/a/usd/$start_date/$end_date/?format=json" | jq -r '.rates[] | "\(.effectiveDate), \(.mid)"'
}

# Funkcja generująca plik z danymi dla gnuplot
generate_data_file() {
    input_data=$1
    output_file=$2

    echo "$input_data" > "$output_file"
}

# Funkcja generująca wykres kursu USD do złotego
generate_plot() {
    input_data=$1
    title=$2

    gnuplot -persist <<-EOFMarker
        set datafile separator ","
        set xdata time
        set timefmt "%Y-%m-%d"
        set format x "%m-%d"
        set xlabel "Data"
        set ylabel "Kurs USD do PLN"
        set title "$title"
        plot "$input_data" using 1:2 with lines linestyle 1 title "USD to PLN"
EOFMarker
}

# Zapytaj użytkownika o okres, dla którego chce wygenerować wykres
echo "Podaj daty w formacie YYYY-MM-DD (np. 2022-01-01 2022-06-30):"
read start_date end_date

# Pobranie danych kursu USD do złotego dla wybranego okresu
data_custom=$(get_data "$start_date" "$end_date")

# Generowanie pliku z danymi dla gnuplotu
generate_data_file "$data_custom" "usd_pln_data_custom.txt"

# Generowanie wykresu
generate_plot "usd_pln_data_custom.txt" "Kurs USD do PLN od $start_date do $end_date"

