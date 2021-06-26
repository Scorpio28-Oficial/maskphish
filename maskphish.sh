# Bash Script para ocultar URL de phishing creado por KP

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            sleep 0.5
            else
            echo -e "\e[1;31m
┌═════════════════════════════════════════════════════════┐
█                \e[1;31m¡¡¡\e[1;37m DATOS ERRONEOS \e[1;31m¡¡¡                   \e[1;31m█
█ \e[1;37m PUEDE COMENZAR NUEVAMENTE EJECUTANDO\e[1;32m bash maskphish.sh \e[1;31m█
└═════════════════════════════════════════════════════════┘\e[0m"
            bash maskphish.sh 1
        fi
    fi
}

echo -e "\n\e[1;30m###### \e[1;30m┌────────────────────────────┐\e[1;30m ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▙▗▌      ▌  ▛▀▖▌  ▗    ▌  \e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▌▘▌▝▀▖▞▀▘▌▗▘▙▄▘▛▀▖▄ ▞▀▘▛▀▖\e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▌ ▌▞▀▌▝▀▖▛▚ ▌  ▌ ▌▐ ▝▀▖▌ ▌\e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### │ \e[1;32m▘ ▘▝▀▘▀▀ ▘ ▘▘  ▘ ▘▀▘▀▀ ▘ ▘\e[1;30m │ ##### \e[0m"
echo -e "\e[1;30m###### \e[1;30m└────────────────────────────┘\e[1;30m ##### \e[0m \n"
echo -e "\e[1;32m \e[0m \n"
echo -e "\e[1;30m ########\e[1;32m PHISHING URL\e[1;30m ########\e[0m \n"
sleep 2
echo -e -n "
\e[1;30m┌═══════════════════════════════┐
█\e[1;32m PEGUE LA URL DE PHYSHING AQUI\e[1;30m █
█\e[1;30m (\e[1;37mcom http o https\e[1;30m)            █
└═══════════════════════════════┘
┃
└═>>>\e[1;37m "
read phish
url_checker $phish
sleep 2
echo -e "
\e[1;30m┌══════════════════════════════┐
█\e[1;32m PROCESAMIENTO Y MODIFICACIÓN\e[1;30m █
█\e[1;32m DE URL DE PHYSHING\e[1;30m           █
└══════════════════════════════┘"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;30m ########\e[1;32m MASKING DOMINIO\e[1;30m ########\e[0m"
sleep 2
echo -e -n "
\e[1;30m┌══════════════════════════════════════════════┐
█\e[1;32m DOMINIO PARA ENMASCARAR LA URL DE PHYSHING\e[1;30m   █
█\e[1;30m (\e[1;37mcom http or https\e[1;30m)\e[1;37m, ex: https://google.com,\e[1;30m █
█\e[1;37m http://anyting.org\e[1;30m)                          █
└══════════════════════════════════════════════┘
┃
└═>>>\e[1;37m "
read mask
url_checker $mask
sleep 2
echo -e '\n
\e[1;30m┌════════════════════════════════════════════════════════════┐
█\e[1;32m ESCRIBA PALABRAS DE INGENIERIA SOCIAL:\e[1;30m                     █
█\e[1;30m (\e[1;37mCOMO EL DINERO GRATIS, LOS MEJORES TRUCOS DE PUBLICACIÓN\e[1;30m) █
└════════════════════════════════════════════════════════════┘'
sleep 2
echo -e -n "
\e[1;30m┌═══════════════════════════════════════┐
█\e[1;32m NO USE EL ESPACIO, SOLO USE \e[1;30m'\e[1;37m-\e[1;30m'\e[1;32m entre\e[1;30m █
█\e[1;32m LAS PALABRAS DE INGENIERIA SOCIAL\e[1;30m     █
└═══════════════════════════════════════┘
┃
└═>>>\e[1;37m "
read words
else
sleep 0.5
echo -e "\n\e[1;30m
┌═══════════════════════════════════┐
█\e[1;32m GENERANDO EL ENLACE MASKPHISH ...\e[1;30m █
└═══════════════════════════════════┘\n"
final=$mask-$words@$shorter
sleep 0.5
echo -e "\e[1;30m
┌═══════════════════════════════┐
█\e[1;32m AQUI ESTA LA URL DE MASKPHISH\e[1;30m █
└═══════════════════════════════┘
┃
└═>>>\e[37m ${final} \e[0m\n "
