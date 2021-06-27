# Bash Script para ocultar URL de phishing

url_checker() {
    if [ ! "${1//:*}" = http ]; then
        if [ ! "${1//:*}" = https ]; then
            echo -e "\e[1;31m
┌═══════════════════════════════════════════════┐
█  \e[31m¡¡¡\e[1;37m DATOS ERRONEOS VUELVA A EMPEZAR \e[31m¡¡¡\e[1;31m      █
█  \e[1;37mSI DESEA SALIR PRECIONE LAS TECLAS\e[1;32m Ctrl \e[1;37m+ \e[1;32mc \e[1;31m █
└═══════════════════════════════════════════════┘\e[0m"
            bash maskphish.sh 1
        fi
    fi
}

echo -e "\n\e[1;30m
\e[1;30m>>>>>>>>\e[1;30m┌────────────────────────────┐\e[1;30m<<<<<<<<
\e[1;30m>>>>>>>>│ \e[1;32m▙▗▌      ▌  ▛▀▖▌  ▗    ▌  \e[1;30m │<<<<<<<<
\e[1;30m>>>>>>>>│ \e[1;32m▌▘▌▝▀▖▞▀▘▌▗▘▙▄▘▛▀▖▄ ▞▀▘▛▀▖\e[1;30m │<<<<<<<<
\e[1;30m>>>>>>>>│ \e[1;32m▌ ▌▞▀▌▝▀▖▛▚ ▌  ▌ ▌▐ ▝▀▖▌ ▌\e[1;30m │<<<<<<<<
\e[1;30m>>>>>>>>│ \e[1;32m▘ ▘▝▀▘▀▀ ▘ ▘▘  ▘ ▘▀▘▀▀ ▘ ▘\e[1;30m │<<<<<<<<
\e[1;30m>>>>>>>>\e[1;30m└────────────────────────────┘\e[1;30m<<<<<<<<

\e[1;30m>>>>>>>>>>>\e[1;32m Traducida, Editada y Personalizada
\e[1;32mPor Scorpio28\e[1;30m<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\e[0m \n"
echo -e "\e[1;30m>>>>>>>>>>>>>>>>\e[1;32m PHISHING URL\e[1;30m <<<<<<<<<<<<<<<<\e[0m \n"
echo -e -n "
\e[1;30m┌═══════════════════════════════┐
█\e[1;32m PEGUE LA URL DE PHYSHING AQUI\e[1;30m █
█\e[1;30m (\e[1;37mcom http o https\e[1;30m)            █
└═══════════════════════════════┘
┃
└═>>>\e[1;37m "
read phish
url_checker $phish
sleep 1
echo -e "
\e[1;30m┌══════════════════════════════┐
█\e[1;32m PROCESAMIENTO Y MODIFICACIÓN\e[1;30m █
█\e[1;32m DE URL DE PHYSHING\e[1;30m           █
└══════════════════════════════┘"
echo ""
short=$(curl -s https://is.gd/create.php\?format\=simple\&url\=${phish})
shorter=${short#https://}
echo -e "\n\e[1;30m>>>>>>>>>>>>>>\e[1;32m MASKING DOMINIO\e[1;30m <<<<<<<<<<<<<<<\e[0m"
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
echo -e '\n
\e[1;30m┌════════════════════════════════════════════════════════════┐
█\e[1;32m ESCRIBA PALABRAS DE INGENIERIA SOCIAL:\e[1;30m                     █
█\e[1;30m (\e[1;37mCOMO EL DINERO GRATIS, LOS MEJORES TRUCOS DE PUBLICACIÓN\e[1;30m) █
└════════════════════════════════════════════════════════════┘'
echo -e -n "
\e[1;30m┌═══════════════════════════════════════┐
█\e[1;32m NO USE EL ESPACIO, SOLO USE \e[1;30m'\e[1;32m-\e[1;30m'\e[1;32m ENTRE\e[1;30m █
█\e[1;32m LAS PALABRAS DE INGENIERIA SOCIAL\e[1;30m     █
└═══════════════════════════════════════┘
┃
└═>>>\e[1;37m "
read words
sleep 0.5
echo -e "\n\e[1;30m┌═══════════════════════════════════┐
█\e[1;32m GENERANDO EL ENLACE MASKPHISH ...\e[1;30m █
└═══════════════════════════════════┘\n"
final=$mask-$words@$shorter
echo -e "\e[1;30m┌═══════════════════════════════┐
█\e[1;32m AQUI ESTA LA URL DE MASKPHISH\e[1;30m █
└═══════════════════════════════┘
┃
└═>>>\e[1;32m ${final} \e[0m\n "
esac
