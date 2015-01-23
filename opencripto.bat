@ECHO OFF
:: openCripto - Segurando seus arquivos!
:: Projeto hospedado no GitHub! 
:: Maintainers: Luiz Nickel e Pedro Franco
title openCripto v0.2
start changelog.txt
color C
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Arquivos goto Cripto
:CONFIRM
echo Deseja criptografar essa pasta? (S/N)
set/p "cho=>"
if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==N goto END
if %cho%==n goto END
echo Comando carregado
goto CONFIRM
:LOCK
ren Arquivos "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Sua pasta foi travada com sucesso.
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto End
:UNLOCK
echo Digite a chave para desbloquear sua pasta
set/p "senha=>"
if NOT %senha%== CHAVE goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Arquivos
echo Sua pasta foi destravada com sucesso.
goto End
:FAIL
echo Chave incorreta. Tente novamente
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto End
:Cripto
md Arquivos
echo Pasta criada com sucesso
@ping 127.0.0.1 -n 2 -w 1000 > nul
goto End
:End
