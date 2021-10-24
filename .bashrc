#IARCPOM
printf "\33[22mIIIIIII\e[4CA\e[4CRRRRRR\e[3CCCCCC\e[2CPPPPPP\e[3COOOOO\e[2CM\e[5CM\n\e[3CI\e[6CA\e[1CA\e[3CR\e[5CR\e[1CC\e[5CC\e[1CP\e[5CP\e[1CO\e[5CO\e[1CMM\e[3CMM\n\e[3CI\e[5CA\e[3CA\e[2CR\e[5CR\e[1CC\e[7CP\e[5CP\e[1CO\e[5CO\e[1CM\e[1CM\e[1CM\e[1CM\n\e[3CI\e[4CA\e[5CA\e[1CRRRRRR\e[2CC\e[7CPPPPPP\e[2CO\e[5CO\e[1CM\e[2CM\e[2CM\n\e[3CI\e[4CAAAAAAA\e[1CR\e[3CR\e[3CC\e[7CP\e[7CO\e[5CO\e[1CM\e[5CM\n\e[3CI\e[4CA\e[5CA\e[1CR\e[4CR\e[2CC\e[5CC\e[1CP\e[7CO\e[5CO\e[1CM\e[5CM\nIIIIIII\e[1CA\e[5CA\e[1CR\e[5CR\e[2CCCCCC\e[2CP\e[8COOOOO\e[2CM\e[5CM\033[0m\n"

#HISTORY
HISTSIZE=1000
HISTFILESIZE=0

#ALIAS
alias ls="ls --color=auto -alSGgh"

#UPDATE
u () {
	sudo apt update && sudo apt upgrade -y
}

#URL_ENCODE
URL_ENCODE () {
	if [ $# -eq 1 ] && [ ! -z "$1" ]
	then
		URL_ENCODE_new=""
		URL_ENCODE_old="$1"
		while [ ! -z "$URL_ENCODE_old" ]
		do
			URL_ENCODE_character="$(printf "%.1s" "$URL_ENCODE_old")"
			if [ "$URL_ENCODE_character" = " " ]
			then URL_ENCODE_new="$URL_ENCODE_new%20"
			elif [ "$URL_ENCODE_character" = "!" ]
			then URL_ENCODE_new="$URL_ENCODE_new%21"
			elif [ "$URL_ENCODE_character" = "\"" ]
			then URL_ENCODE_new="$URL_ENCODE_new%22"
			elif [ "$URL_ENCODE_character" = "#" ]
			then URL_ENCODE_new="$URL_ENCODE_new%23"
			elif [ "$URL_ENCODE_character" = "$" ]
			then URL_ENCODE_new="$URL_ENCODE_new%24"
			elif [ "$URL_ENCODE_character" = "%" ]
			then URL_ENCODE_new="$URL_ENCODE_new%25"
			elif [ "$URL_ENCODE_character" = "&" ]
			then URL_ENCODE_new="$URL_ENCODE_new%26"
			elif [ "$URL_ENCODE_character" = "'" ]
			then URL_ENCODE_new="$URL_ENCODE_new%27"
			elif [ "$URL_ENCODE_character" = "(" ]
			then URL_ENCODE_new="$URL_ENCODE_new%28"
			elif [ "$URL_ENCODE_character" = ")" ]
			then URL_ENCODE_new="$URL_ENCODE_new%29"
			elif [ "$URL_ENCODE_character" = "*" ]
			then URL_ENCODE_new="$URL_ENCODE_new%2A"
			elif [ "$URL_ENCODE_character" = "+" ]
			then URL_ENCODE_new="$URL_ENCODE_new%2B"
			elif [ "$URL_ENCODE_character" = "," ]
			then URL_ENCODE_new="$URL_ENCODE_new%2C"
			elif [ "$URL_ENCODE_character" = "-" ]
			then URL_ENCODE_new="$URL_ENCODE_new%2D"
			elif [ "$URL_ENCODE_character" = "." ]
			then URL_ENCODE_new="$URL_ENCODE_new%2E"
			elif [ "$URL_ENCODE_character" = "/" ]
			then URL_ENCODE_new="$URL_ENCODE_new%2F"
			elif [ "$URL_ENCODE_character" = "0" ]
			then URL_ENCODE_new="$URL_ENCODE_new%30"
			elif [ "$URL_ENCODE_character" = "1" ]
			then URL_ENCODE_new="$URL_ENCODE_new%31"
			elif [ "$URL_ENCODE_character" = "2" ]
			then URL_ENCODE_new="$URL_ENCODE_new%32"
			elif [ "$URL_ENCODE_character" = "3" ]
			then URL_ENCODE_new="$URL_ENCODE_new%33"
			elif [ "$URL_ENCODE_character" = "4" ]
			then URL_ENCODE_new="$URL_ENCODE_new%34"
			elif [ "$URL_ENCODE_character" = "5" ]
			then URL_ENCODE_new="$URL_ENCODE_new%35"
			elif [ "$URL_ENCODE_character" = "6" ]
			then URL_ENCODE_new="$URL_ENCODE_new%36"
			elif [ "$URL_ENCODE_character" = "7" ]
			then URL_ENCODE_new="$URL_ENCODE_new%37"
			elif [ "$URL_ENCODE_character" = "8" ]
			then URL_ENCODE_new="$URL_ENCODE_new%38"
			elif [ "$URL_ENCODE_character" = "9" ]
			then URL_ENCODE_new="$URL_ENCODE_new%39"
			elif [ "$URL_ENCODE_character" = ":" ]
			then URL_ENCODE_new="$URL_ENCODE_new%3A"
			elif [ "$URL_ENCODE_character" = ";" ]
			then URL_ENCODE_new="$URL_ENCODE_new%3B"
			elif [ "$URL_ENCODE_character" = "<" ]
			then URL_ENCODE_new="$URL_ENCODE_new%3C"
			elif [ "$URL_ENCODE_character" = "=" ]
			then URL_ENCODE_new="$URL_ENCODE_new%3D"
			elif [ "$URL_ENCODE_character" = ">" ]
			then URL_ENCODE_new="$URL_ENCODE_new%3E"
			elif [ "$URL_ENCODE_character" = "?" ]
			then URL_ENCODE_new="$URL_ENCODE_new%3F"
			elif [ "$URL_ENCODE_character" = "@" ]
			then URL_ENCODE_new="$URL_ENCODE_new%40"
			elif [ "$URL_ENCODE_character" = "A" ]
			then URL_ENCODE_new="$URL_ENCODE_new%41"
			elif [ "$URL_ENCODE_character" = "B" ]
			then URL_ENCODE_new="$URL_ENCODE_new%42"
			elif [ "$URL_ENCODE_character" = "C" ]
			then URL_ENCODE_new="$URL_ENCODE_new%43"
			elif [ "$URL_ENCODE_character" = "D" ]
			then URL_ENCODE_new="$URL_ENCODE_new%44"
			elif [ "$URL_ENCODE_character" = "E" ]
			then URL_ENCODE_new="$URL_ENCODE_new%45"
			elif [ "$URL_ENCODE_character" = "F" ]
			then URL_ENCODE_new="$URL_ENCODE_new%46"
			elif [ "$URL_ENCODE_character" = "G" ]
			then URL_ENCODE_new="$URL_ENCODE_new%47"
			elif [ "$URL_ENCODE_character" = "H" ]
			then URL_ENCODE_new="$URL_ENCODE_new%48"
			elif [ "$URL_ENCODE_character" = "I" ]
			then URL_ENCODE_new="$URL_ENCODE_new%49"
			elif [ "$URL_ENCODE_character" = "J" ]
			then URL_ENCODE_new="$URL_ENCODE_new%4A"
			elif [ "$URL_ENCODE_character" = "K" ]
			then URL_ENCODE_new="$URL_ENCODE_new%4B"
			elif [ "$URL_ENCODE_character" = "L" ]
			then URL_ENCODE_new="$URL_ENCODE_new%4C"
			elif [ "$URL_ENCODE_character" = "M" ]
			then URL_ENCODE_new="$URL_ENCODE_new%4D"
			elif [ "$URL_ENCODE_character" = "N" ]
			then URL_ENCODE_new="$URL_ENCODE_new%4E"
			elif [ "$URL_ENCODE_character" = "O" ]
			then URL_ENCODE_new="$URL_ENCODE_new%4F"
			elif [ "$URL_ENCODE_character" = "P" ]
			then URL_ENCODE_new="$URL_ENCODE_new%50"
			elif [ "$URL_ENCODE_character" = "Q" ]
			then URL_ENCODE_new="$URL_ENCODE_new%51"
			elif [ "$URL_ENCODE_character" = "R" ]
			then URL_ENCODE_new="$URL_ENCODE_new%52"
			elif [ "$URL_ENCODE_character" = "S" ]
			then URL_ENCODE_new="$URL_ENCODE_new%53"
			elif [ "$URL_ENCODE_character" = "T" ]
			then URL_ENCODE_new="$URL_ENCODE_new%54"
			elif [ "$URL_ENCODE_character" = "U" ]
			then URL_ENCODE_new="$URL_ENCODE_new%55"
			elif [ "$URL_ENCODE_character" = "V" ]
			then URL_ENCODE_new="$URL_ENCODE_new%56"
			elif [ "$URL_ENCODE_character" = "W" ]
			then URL_ENCODE_new="$URL_ENCODE_new%57"
			elif [ "$URL_ENCODE_character" = "X" ]
			then URL_ENCODE_new="$URL_ENCODE_new%58"
			elif [ "$URL_ENCODE_character" = "Y" ]
			then URL_ENCODE_new="$URL_ENCODE_new%59"
			elif [ "$URL_ENCODE_character" = "Z" ]
			then URL_ENCODE_new="$URL_ENCODE_new%5A"
			elif [ "$URL_ENCODE_character" = "[" ]
			then URL_ENCODE_new="$URL_ENCODE_new%5B"
			elif [ "$URL_ENCODE_character" = "\\" ]
			then URL_ENCODE_new="$URL_ENCODE_new%5C"
			elif [ "$URL_ENCODE_character" = "]" ]
			then URL_ENCODE_new="$URL_ENCODE_new%5D"
			elif [ "$URL_ENCODE_character" = "^" ]
			then URL_ENCODE_new="$URL_ENCODE_new%5E"
			elif [ "$URL_ENCODE_character" = "_" ]
			then URL_ENCODE_new="$URL_ENCODE_new%5F"
			elif [ "$URL_ENCODE_character" = "\`" ]
			then URL_ENCODE_new="$URL_ENCODE_new%60"
			elif [ "$URL_ENCODE_character" = "a" ]
			then URL_ENCODE_new="$URL_ENCODE_new%61"
			elif [ "$URL_ENCODE_character" = "b" ]
			then URL_ENCODE_new="$URL_ENCODE_new%62"
			elif [ "$URL_ENCODE_character" = "c" ]
			then URL_ENCODE_new="$URL_ENCODE_new%63"
			elif [ "$URL_ENCODE_character" = "d" ]
			then URL_ENCODE_new="$URL_ENCODE_new%64"
			elif [ "$URL_ENCODE_character" = "e" ]
			then URL_ENCODE_new="$URL_ENCODE_new%65"
			elif [ "$URL_ENCODE_character" = "f" ]
			then URL_ENCODE_new="$URL_ENCODE_new%66"
			elif [ "$URL_ENCODE_character" = "g" ]
			then URL_ENCODE_new="$URL_ENCODE_new%67"
			elif [ "$URL_ENCODE_character" = "h" ]
			then URL_ENCODE_new="$URL_ENCODE_new%68"
			elif [ "$URL_ENCODE_character" = "i" ]
			then URL_ENCODE_new="$URL_ENCODE_new%69"
			elif [ "$URL_ENCODE_character" = "j" ]
			then URL_ENCODE_new="$URL_ENCODE_new%6A"
			elif [ "$URL_ENCODE_character" = "k" ]
			then URL_ENCODE_new="$URL_ENCODE_new%6B"
			elif [ "$URL_ENCODE_character" = "l" ]
			then URL_ENCODE_new="$URL_ENCODE_new%6C"
			elif [ "$URL_ENCODE_character" = "m" ]
			then URL_ENCODE_new="$URL_ENCODE_new%6D"
			elif [ "$URL_ENCODE_character" = "n" ]
			then URL_ENCODE_new="$URL_ENCODE_new%6E"
			elif [ "$URL_ENCODE_character" = "o" ]
			then URL_ENCODE_new="$URL_ENCODE_new%6F"
			elif [ "$URL_ENCODE_character" = "p" ]
			then URL_ENCODE_new="$URL_ENCODE_new%70"
			elif [ "$URL_ENCODE_character" = "q" ]
			then URL_ENCODE_new="$URL_ENCODE_new%71"
			elif [ "$URL_ENCODE_character" = "r" ]
			then URL_ENCODE_new="$URL_ENCODE_new%72"
			elif [ "$URL_ENCODE_character" = "s" ]
			then URL_ENCODE_new="$URL_ENCODE_new%73"
			elif [ "$URL_ENCODE_character" = "t" ]
			then URL_ENCODE_new="$URL_ENCODE_new%74"
			elif [ "$URL_ENCODE_character" = "u" ]
			then URL_ENCODE_new="$URL_ENCODE_new%75"
			elif [ "$URL_ENCODE_character" = "v" ]
			then URL_ENCODE_new="$URL_ENCODE_new%76"
			elif [ "$URL_ENCODE_character" = "w" ]
			then URL_ENCODE_new="$URL_ENCODE_new%77"
			elif [ "$URL_ENCODE_character" = "x" ]
			then URL_ENCODE_new="$URL_ENCODE_new%78"
			elif [ "$URL_ENCODE_character" = "y" ]
			then URL_ENCODE_new="$URL_ENCODE_new%79"
			elif [ "$URL_ENCODE_character" = "z" ]
			then URL_ENCODE_new="$URL_ENCODE_new%7A"
			elif [ "$URL_ENCODE_character" = "{" ]
			then URL_ENCODE_new="$URL_ENCODE_new%7B"
			elif [ "$URL_ENCODE_character" = "|" ]
			then URL_ENCODE_new="$URL_ENCODE_new%7C"
			elif [ "$URL_ENCODE_character" = "}" ]
			then URL_ENCODE_new="$URL_ENCODE_new%7D"
			elif [ "$URL_ENCODE_character" = "~" ]
			then URL_ENCODE_new="$URL_ENCODE_new%7E"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%7F"
			elif [ "$URL_ENCODE_character" = "\`" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%82%AC"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%81"
			elif [ "$URL_ENCODE_character" = "‚" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%9A"
			elif [ "$URL_ENCODE_character" = "ƒ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C6%92"
			elif [ "$URL_ENCODE_character" = "„" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%9E"
			elif [ "$URL_ENCODE_character" = "…" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%A6"
			elif [ "$URL_ENCODE_character" = "†" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%A0"
			elif [ "$URL_ENCODE_character" = "‡" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%A1"
			elif [ "$URL_ENCODE_character" = "ˆ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%CB%86"
			elif [ "$URL_ENCODE_character" = "‰" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%B0"
			elif [ "$URL_ENCODE_character" = "Š" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%A0"
			elif [ "$URL_ENCODE_character" = "‹" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%B9"
			elif [ "$URL_ENCODE_character" = "Œ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%92"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%8D"
			elif [ "$URL_ENCODE_character" = "Ž" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%BD"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%8F"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%90"
			elif [ "$URL_ENCODE_character" = "‘" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%98"
			elif [ "$URL_ENCODE_character" = "’" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%99"
			elif [ "$URL_ENCODE_character" = "“" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%9C"
			elif [ "$URL_ENCODE_character" = "”" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%9D"
			elif [ "$URL_ENCODE_character" = "•" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%A2"
			elif [ "$URL_ENCODE_character" = "–" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%93"
			elif [ "$URL_ENCODE_character" = "—" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80%94"
			elif [ "$URL_ENCODE_character" = "˜" ]
			then URL_ENCODE_new="$URL_ENCODE_new%CB%9C"
			elif [ "$URL_ENCODE_character" = "™" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%84"
			elif [ "$URL_ENCODE_character" = "š" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%A1"
			elif [ "$URL_ENCODE_character" = "›" ]
			then URL_ENCODE_new="$URL_ENCODE_new%E2%80"
			elif [ "$URL_ENCODE_character" = "œ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%93"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%9D"
			elif [ "$URL_ENCODE_character" = "ž" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%BE"
			elif [ "$URL_ENCODE_character" = "Ÿ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C5%B8"
			elif [ "$URL_ENCODE_character" = "" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A0"
			elif [ "$URL_ENCODE_character" = "¡" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A1"
			elif [ "$URL_ENCODE_character" = "¢" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A2"
			elif [ "$URL_ENCODE_character" = "£" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A3"
			elif [ "$URL_ENCODE_character" = "¤" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A4"
			elif [ "$URL_ENCODE_character" = "¥" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A5"
			elif [ "$URL_ENCODE_character" = "¦" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A6"
			elif [ "$URL_ENCODE_character" = "§" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A7"
			elif [ "$URL_ENCODE_character" = "¨" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A8"
			elif [ "$URL_ENCODE_character" = "©" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%A9"
			elif [ "$URL_ENCODE_character" = "ª" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%AA"
			elif [ "$URL_ENCODE_character" = "«" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%AB"
			elif [ "$URL_ENCODE_character" = "¬" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%AC"
			elif [ "$URL_ENCODE_character" = "­" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%AD"
			elif [ "$URL_ENCODE_character" = "®" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%AE"
			elif [ "$URL_ENCODE_character" = "¯" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%AF"
			elif [ "$URL_ENCODE_character" = "°" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B0"
			elif [ "$URL_ENCODE_character" = "±" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B1"
			elif [ "$URL_ENCODE_character" = "²" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B2"
			elif [ "$URL_ENCODE_character" = "³" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B3"
			elif [ "$URL_ENCODE_character" = "´" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B4"
			elif [ "$URL_ENCODE_character" = "µ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B5"
			elif [ "$URL_ENCODE_character" = "¶" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B6"
			elif [ "$URL_ENCODE_character" = "·" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B7"
			elif [ "$URL_ENCODE_character" = "¸" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B8"
			elif [ "$URL_ENCODE_character" = "¹" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%B9"
			elif [ "$URL_ENCODE_character" = "º" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%BA"
			elif [ "$URL_ENCODE_character" = "»" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%BB"
			elif [ "$URL_ENCODE_character" = "¼" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%BC"
			elif [ "$URL_ENCODE_character" = "½" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%BD"
			elif [ "$URL_ENCODE_character" = "¾" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%BE"
			elif [ "$URL_ENCODE_character" = "¿" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C2%BF"
			elif [ "$URL_ENCODE_character" = "À" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%80"
			elif [ "$URL_ENCODE_character" = "Á" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%81"
			elif [ "$URL_ENCODE_character" = "Â" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%82"
			elif [ "$URL_ENCODE_character" = "Ã" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%83"
			elif [ "$URL_ENCODE_character" = "Ä" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%84"
			elif [ "$URL_ENCODE_character" = "Å" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%85"
			elif [ "$URL_ENCODE_character" = "Æ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%86"
			elif [ "$URL_ENCODE_character" = "Ç" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%87"
			elif [ "$URL_ENCODE_character" = "È" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%88"
			elif [ "$URL_ENCODE_character" = "É" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%89"
			elif [ "$URL_ENCODE_character" = "Ê" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%8A"
			elif [ "$URL_ENCODE_character" = "Ë" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%8B"
			elif [ "$URL_ENCODE_character" = "Ì" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%8C"
			elif [ "$URL_ENCODE_character" = "Í" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%8D"
			elif [ "$URL_ENCODE_character" = "Î" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%8E"
			elif [ "$URL_ENCODE_character" = "Ï" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%8F"
			elif [ "$URL_ENCODE_character" = "Ð" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%90"
			elif [ "$URL_ENCODE_character" = "Ñ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%91"
			elif [ "$URL_ENCODE_character" = "Ò" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%92"
			elif [ "$URL_ENCODE_character" = "Ó" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%93"
			elif [ "$URL_ENCODE_character" = "Ô" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%94"
			elif [ "$URL_ENCODE_character" = "Õ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%95"
			elif [ "$URL_ENCODE_character" = "Ö" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%96"
			elif [ "$URL_ENCODE_character" = "×" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%97"
			elif [ "$URL_ENCODE_character" = "Ø" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%98"
			elif [ "$URL_ENCODE_character" = "Ù" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%99"
			elif [ "$URL_ENCODE_character" = "Ú" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%9A"
			elif [ "$URL_ENCODE_character" = "Û" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%9B"
			elif [ "$URL_ENCODE_character" = "Ü" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%9C"
			elif [ "$URL_ENCODE_character" = "Ý" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%9D"
			elif [ "$URL_ENCODE_character" = "Þ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%9E"
			elif [ "$URL_ENCODE_character" = "ß" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%9F"
			elif [ "$URL_ENCODE_character" = "à" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A0"
			elif [ "$URL_ENCODE_character" = "á" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A1"
			elif [ "$URL_ENCODE_character" = "â" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A2"
			elif [ "$URL_ENCODE_character" = "ã" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A3"
			elif [ "$URL_ENCODE_character" = "ä" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A4"
			elif [ "$URL_ENCODE_character" = "å" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A5"
			elif [ "$URL_ENCODE_character" = "æ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A6"
			elif [ "$URL_ENCODE_character" = "ç" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A7"
			elif [ "$URL_ENCODE_character" = "è" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A8"
			elif [ "$URL_ENCODE_character" = "é" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%A9"
			elif [ "$URL_ENCODE_character" = "ê" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%AA"
			elif [ "$URL_ENCODE_character" = "ë" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%AB"
			elif [ "$URL_ENCODE_character" = "ì" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%AC"
			elif [ "$URL_ENCODE_character" = "í" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%AD"
			elif [ "$URL_ENCODE_character" = "î" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%AE"
			elif [ "$URL_ENCODE_character" = "ï" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%AF"
			elif [ "$URL_ENCODE_character" = "ð" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B0"
			elif [ "$URL_ENCODE_character" = "ñ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B1"
			elif [ "$URL_ENCODE_character" = "ò" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B2"
			elif [ "$URL_ENCODE_character" = "ó" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B3"
			elif [ "$URL_ENCODE_character" = "ô" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B4"
			elif [ "$URL_ENCODE_character" = "õ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B5"
			elif [ "$URL_ENCODE_character" = "ö" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B6"
			elif [ "$URL_ENCODE_character" = "÷" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B7"
			elif [ "$URL_ENCODE_character" = "ø" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B8"
			elif [ "$URL_ENCODE_character" = "ù" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%B9"
			elif [ "$URL_ENCODE_character" = "ú" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%BA"
			elif [ "$URL_ENCODE_character" = "û" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%BB"
			elif [ "$URL_ENCODE_character" = "ü" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%BC"
			elif [ "$URL_ENCODE_character" = "ý" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%BD"
			elif [ "$URL_ENCODE_character" = "þ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%BE"
			elif [ "$URL_ENCODE_character" = "ÿ" ]
			then URL_ENCODE_new="$URL_ENCODE_new%C3%BF"
			else
				URL_ENCODE_new="$URL_ENCODE_new$URL_ENCODE_character"
			fi
			URL_ENCODE_old="$(printf "%s" "$URL_ENCODE_old" | sed -r "s/^.{1}//")"
		done
		printf "%s" "$URL_ENCODE_new"
	else
		printf "%s\n" "ERROR IN URL_ENCODE">&2
	fi
}

#EXTRACT
extract () {
	if [ -f $1 ] ; then
		case $1 in
			*.tar.bz2)   tar xjvf $1    ;;
			*.tar.gz)    tar xzvf $1    ;;
			*.tar.xz)    tar xvf $1    ;;
			*.bz2)       bzip2 -d $1    ;;
			*.rar)       unrar2dir $1    ;;
			*.gz)        gunzip $1    ;;
			*.tar)       tar xf $1    ;;
			*.tbz2)      tar xjf $1    ;;
			*.tgz)       tar xzf $1    ;;
			*.zip)       unzip2dir $1     ;;
			*.Z)         uncompress $1    ;;
			*.7z)        7z x $1    ;;
			*.ace)       unace x $1    ;;
			*)           printf "%s\n" "Cannot Extract"   ;;
		esac
	else
		printf "%s\n" "Invalid File"
	fi
}

#PS
PS1="\[\e]2;[\j]\$?:\w\a\]\[\033[38;2;0;0;255;1m\]\u@\h\[\033[0m\]:\[\033[38;2;0;255;0;1m\]\w\[\033[0m\]\n[\[\033[38;2;255;0;0;1m\]\j\[\033[0m\]]\[\033[38;2;255;0;0;1m\]\$?\[\033[0m\]\$ "
PS2="$> "

#PATH
export PATH=$PATH:/mnt/d/IARCPOM/BINARY:/mnt/d/IARCPOM/BINARY/WINDOWS_BINARY/UnxUtils/BINARY
