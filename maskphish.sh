# Bash Script para ocultar URL de phishing creado por KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\n\e[1;31;42m######┌──────────────────────────┐##### \e[0m"
echo -e "\e[1;31;42m######│▙▗▌      ▌  ▛▀▖▌  ▗    ▌  │##### \e[0m"
echo -e "\e[1;31;42m######│▌▘▌▝▀▖▞▀▘▌▗▘▙▄▘▛▀▖▄ ▞▀▘▛▀▖│##### \e[0m"
echo -e "\e[1;31;42m######│▌ ▌▞▀▌▝▀▖▛▚ ▌  ▌ ▌▐ ▝▀▖▌ ▌│##### \e[0m"
echo -e "\e[1;31;42m######│▘ ▘▝▀▘▀▀ ▘ ▘▘  ▘ ▘▀▘▀▀ ▘ ▘│##### \e[0m"
echo -e "\e[1;31;42m######└──────────────────────────┘##### \e[0m \n"
echo -e "\e[40;38;5;82m Por Favor Visite \e[30;48;5;82m https://t.me/Darkmux_Community \e[0m"
echo -e "\e[30;48;5;82m    Comunidad \e[40;38;5;82m   Traducido Por Scorpio28 \e[0m \n\n"
echo -e "\e[1;31;42m ### Phishing URL ###\e[0m \n"
echo -n "Pegue la URL de phishing aquí (con http o https): "
read phish
url_checker $phish
sleep 1
echo "Procesamiento y modificación de url de phishing"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;31;42m ### Masking Dominio ###\e[0m"
echo 'Dominio para enmascarar la URL de phishing (con http or https), ex: https://google.com, http
://anything.org) :'
echo -en "\e[32m=>\e[0m "
read mask
url_checker $mask
echo -e '\nEscriba palabras de ingeniería social:(como el dinero gratis, los mejores trucos de publicación)'
echo -e "\e[31mNo use el espacio, solo use '-' entre las palabras de ingeniería social\e[0m"
echo -en "\e[32m=>\e[0m "
read words
echo -e "\nGenerando el enlace MaskPhish ...\n"
final=$mask-$words@$shorter
echo -e "Aquí está la URL de MaskPhish:\e[32m ${final} \e[0m\n"
