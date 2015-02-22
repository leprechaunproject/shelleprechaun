#!/system/bin/sh
# Script principal - Manualify
# Por Luiz Nickel e Pedro Franco @ Shelleprechaun
echo "seu superusuario foi ativado?"
sleep 2
echo "caso funcionar, o superusuario foi configurado corretamente!"
sleep 2
echo "caso aparecer uma caralhada de erro em Java, o superusuario nao foi ativado ou voce nao o possui!"
sleep 2
echo "tentando spotify em 3 segundos"
sleep 3
   am start -n com.spotify.music/com.spotify.music.MainActivity
echo "comando inserido."
sleep 4
echo "este comando apenas abre o spotify. irei abrir uma pagina com todos os scripts disponiveis para o manualify!"
am start -a android.intent.action.VIEW -d https://github.com/leprechaunproject/shelleprechaun/tree/master/Manualify
end
