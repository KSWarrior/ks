banner() {
    clear
    # Define colors for gradient effect
    COLORS=('\033[0;34m' '\033[0;36m' '\033[0;35m' '\033[0;32m')
    NC='\033[0m' # No Color

    # Banner lines
    lines=(
" _  ______   __        __              _"
"| |/ / ___|  \\ \\      / /_ _ _ __ _ __(_) ___  _ __"
"| ' /\\___ \\   \\ \\ /\\ / / _\` | '__| '__| |/ _ \\| '__|"
"| . \\ ___) |   \\ V  V / (_| | |  | |  | | (_) | |"
"|_|\\_\\____/     \\_/\\_/ \\__,_|_|  |_|  |_|\\___/|_|"
    )

    # Print each line with gradient and sliding effect
    for line in "${lines[@]}"; do
        len=${#line}
        for ((i=0; i<=len; i++)); do
            color_index=$((i % ${#COLORS[@]}))
            echo -ne "${COLORS[$color_index]}${line:0:i}${NC}\r"
            sleep 0.000005  # Adjust speed for smooth effect
        done
        echo  # move to next line after finishing
        sleep 0.000005
    done

    # Optional finishing message with typing effect
    echo
    message="   🌐 Visit My Website https://ks.42web.io
  💬 Join My Discord https://discord.gg/2kAYnH655h"
    for ((i=0; i<${#message}; i++)); do
        echo -n "${message:$i:1}"
        sleep 0.005
    done
    echo
}

banner
