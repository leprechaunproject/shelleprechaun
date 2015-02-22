#!/system/bin/sh
# Teste de script - Manualify
FILE="/tmp/out.$$"
GREP="/bin/grep"
# Verificar se o modo SU esta ativado.
if [ "$(id -u)" != "0" ]; then
   echo "Este script requer o su ativado!" 1>&2
   exit 1
fi
am start -n com.spotify.music/com.spotify.music.MainActivity
