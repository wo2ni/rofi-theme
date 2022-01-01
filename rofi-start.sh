#!/usr/bin/env bash

#+++++++++++++#
#   Run rofi  # 
#+++++++++++++#

Dir='/usr/share/rofi/lht-rofi-theme'
readonly Dir

_Color=(
    "\033[0m"
    "\033[1;31m"
    "\033[1;32m"
    "\033[1;33m"
    "\033[1;34m"
    "\033[1;35m"
    "\033[1;36m"
)

ALPHA='#00000000'
BG='#000000ff'
FG='#FFFFFFff'
SELECT='#101010ff'

COLORS=('#EC7875' '#61C766' '#FDD835' '#42A5F5' '#BA68C8' '#4DD0E1' '#00B19F'
		'#FBC02D' '#E57C46' '#AC8476' '#6D8895' '#EC407A' '#B9C244' '#6C77BB'
)

ACCENT="${COLORS[$(( $RANDOM % 14 ))]}ff"

cat > $Dir/.colors.rasi <<- EOF
	/* colors */

	* {
	  al:  $ALPHA;
	  bg:  $BG;
	  se:  $SELECT;
	  fg:  $FG;
	  ac:  $ACCENT;
	}
EOF

Themes=('style_10.rasi' 'style_12.rasi' 'style_2.rasi' 'style_4.rasi' 'style_6.rasi' 'style_8.rasi'
        'style_11.rasi' 'style_1.rasi'  'style_3.rasi' 'style_5.rasi' 'style_7.rasi' 'style_9.rasi'
)

__Show_help_menu() {
    echo -e "${_Color[2]}"
    cat <<"EOF"    
    Welcom to Rofi;
    This is a free theme;
    Please enter: lht-rofi <0-11>
    !! Enjoy Arch Linux !!
EOF
    echo -e "${_Color[0]}"
}

__Rofi_logo() {
    echo -e "${_Color[6]}"
cat << "EOF"
     _____     ____    ______   _____
    |  __ \   / __ \  |  ____| |_   _|
    | |__) | | |  | | | |__      | |
    |  _  /  | |  | | |  __|     | |
    | | \ \  | |__| | | |       _| |_
    |_|  \_\  \____/  |_|      |_____|
EOF
    echo -e "${_Color[0]}"
}

case $1 in
    '0')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '1')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '2')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '3')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '4')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '5')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '6')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '7')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '8')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '9')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '10')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    '11')
        rofi -no-lazy-grab -show drun -modi drun -theme $Dir/"${Themes[$1]}"
        ;;
    *)
        if [[ $1 > 11 ]]; then
            __Rofi_logo
            printf "${_Color[1]}!!Eroor!!${_Color[0]}\n"
            printf "${_Color[1]}!!Eroor The maximum number you can enter is 11!!${_Color[0]}\n"
            printf "${_Color[1]}!!Don't enter any characters!!${_Color[0]}\n"
        elif [ !$1 ]; then
            __Rofi_logo
            __Show_help_menu
        fi
        ;;
esac
