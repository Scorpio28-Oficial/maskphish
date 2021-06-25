# Bash Script para ocultar URL de phishing creado por KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[31m[!] Invalid URL. Please use http or https.\e[0m"
            exit 1
        fi
    fi
}

echo -e "\n\e[1;30m###### \e[1;30m┌────────────────────────────┐\e[1;30m ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▙▗▌      ▌  ▛▀▖▌  ▗    ▌  \e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▌▘▌▝▀▖▞▀▘▌▗▘▙▄▘▛▀▖▄ ▞▀▘▛▀▖\e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▌ ▌▞▀▌▝▀▖▛▚ ▌  ▌ ▌▐ ▝▀▖▌ ▌\e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▘ ▘▝▀▘▀▀ ▘ ▘▘  ▘ ▘▀▘▀▀ ▘ ▘\e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### \e[1;30m└────────────────────────────┘\e[1;30m ##### \e[0m \n"
echo -e "\e[1;32m Traducido y Personalizado Por \e[1;32m Scorpio28 \e[0m \n\n"
echo -e "\e[1;30m ###\e[1;32m Phishing URL\e[1;30m ###\e[0m \n"
echo -e -n "
\e[1;30m┌═══════════════════════════════┐
█\e[1;32m Pegue la URL de phishing aquí\e[1;30m █
█\e[1;30m (\e[1;37mcon http o https\e[1;30m)            █
└═══════════════════════════════┘
┃
└═>>>\e[1;37m "
read phish
url_checker $phish
sleep 1
echo -e "
\e[1;30m┌══════════════════════════════┐
█\e[1;32m Procesamiento y modificación\e[1;30m █
█\e[1;32m de url de phishing\e[1;30m           █
└══════════════════════════════┘"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;30m ###\e[1;32m Masking Dominio\e[1;30m ###\e[0m"
echo -e -n "
\e[1;30m┌══════════════════════════════════════════════┐
█\e[1;32m Dominio para enmascarar la URL de phishing\e[1;30m   █
█\e[1;30m (\e[1;37mcon http or https\e[1;30m)\e[1;37m, ex: https://google.com,\e[1;30m █
█\e[1;37m http://anything.org\e[1;30m)                         █
└══════════════════════════════════════════════┘
┃
└═>>>\e[1;37m "
read mask
url_checker $mask
echo -e '\n
\e[1;30m┌════════════════════════════════════════════════════════════┐
█\e[1;32m Escriba palabras de ingeniería social:\e[1;30m                     █
█\e[1;30m (\e[1;37mcomo el dinero gratis, los mejores trucos de publicación\e[1;30m) █
└════════════════════════════════════════════════════════════┘'
echo -e -n "
\e[1;30m┌═══════════════════════════════════════┐
█\e[1;32m No use el espacio, solo use \e[1;30m'\e[1;37m-\e[1;30m'\e[1;32m entre\e[1;30m █
█\e[1;32m las palabras de ingeniería social\e[1;30m     █
└═══════════════════════════════════════┘
┃
└═>>>\e[1;37m "
read words
echo -e "\n\e[1;30m┌═══════════════════════════════════┐
█\e[1;32m Generando el enlace MaskPhish ...\e[1;30m █
└═══════════════════════════════════┘\n"
final=$mask-$words@$shorter
echo -e "\e[1;30m┌═══════════════════════════════┐
█\e[1;32m Aquí está la URL de MaskPhish\e[1;30m █
└═══════════════════════════════┘
┃
└═>>>\e[37m ${final} \e[0m\n "
