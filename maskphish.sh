# Bash Script para Ocultar URL de phishing creado por KP

url_checker() {
    si [ !  "${1//:*}"  = http ]; entonces
        si [ !  "${1//:*}"  = https ]; entonces
            echo -e  "\e[31m[!] Dirección URL no válida. Por favor, utilice http o https.\e[0m" 
            salida 1
        Fi
    Fi
}

echo -e  "\n\e[1;31;42m#######┌───────────────────────────┐##### \e[0m" 
echo -e  "\e[1;31;42m######│▙▗▌ ▌ ▛▀▖▌ ▗ ▌ │##### \e[0m" 
echo -e  "\e[1;31;42m#######│▌▘▌▝▀▖▞▀▘▌▗▘▙▄▘▛▀▖▄ ▞▀▘▛▀▖│##### \e[0m" 
echo -e  "\e[1;31;42m#######│▌ ▌▞▀▌▝▀▖▛▚ ▌ ▌ ▌▐ ▝▀▖▌ ▌│##### \e[0m" 
echo -e  "\e[1;31;42m######│▘ ▘▝▀▘▀▀ ▘ ▘▘ ▘ ▘▀▘▀▀ ▘ ▘│##### \e[0m" 
echo -e  "\e[1;31;42m######└──────────────────────────┘##### \e[0m \n" 
echo -e  "\e[40;38;5;82m Por favor visite \e[30;48;5;82m https://www.kalilinux.in \e[0m" 
echo -e  "\e[30;48;5;82m Copyright \e[40;38;5;82m JayKali \e[0m \n\n" 
echo -e  "\e[1;31;42m ### URL de phishing ###\e[0m \n" 
echo -n  "Pega la URL de phishing aquí (con http o https): " 
leer phish
url_checker $phish
dormir 1
echo  "Procesamiento y modificación de url de phishing" 
eco ""
short=$(curl -s https://is.gd/create.php\? format\=simple\&url\=${phish}) 
shorter=${corto#https://}
echo -e  "\n\e[1;31;42m ### Masking Domain ###\e[0m" 
echo  'Dominio para enmascarar la URL de phishing (con http o https), por ejemplo: https://google.com, http
://anything.org) :'
echo -en  "\e[32m=>\e[0m " 
máscara de lectura
url_checker $mask
echo -e  '\nType palabras de ingeniería social:(like free-money, best-pubg-tricks)' 
echo -e  "\e[31mNo use el espacio sólo use '-' entre palabras de ingeniería social\e[0m" 
echo -en  "\e[32m=>\e[0m " 
leer palabras
echo -e  "\nGenerating MaskPhish Link...\n" 
final=$mask-$words@$shorter
echo -e  "Aquí está la URL MaskPhish:\e[32m ${final} \e[0m\n"
