#!/bin/bash
clear
GREEN='\e[32m'
RED='\e[31m'
RESET='\e[0m'

for comando in split shred openssl; do
    if ! command -v "$comando" &>/dev/null; then
        echo "${RED}Erro: comando "$comando" não esta instalado! ${RESET}"
        exit 1

    fi
done




echo "      __         ___     "
echo "     /\ \       /\_ \     "
echo "     \_\ \  ___ \//\ \    "
echo "   /_ \ \/ __\ \  \ \      "
echo "  /\ \L\ \/ \  __/ \_\ \_    "
echo "  \ \___,_\  \____\/\____\   "
echo "   \/__,_ / \/____/\/____/   "
echo
echo

echo "Escolha uma das opções a baixo para deletar arquivos de forma segura"
echo
echo "-------------> 1- Deletar apenas um arquivo"
echo "-------------> 2- Deletar todos os arquivos de uma pasta"
echo "-------------> 3- Dividir e deletar"
echo "-------------> 4- Sair do programa"

read -p "Digite --->  " resposta
case "$resposta" in

1)
	read -p "Entre com o  caminho do arquivo: " arquivo
	echo "Você digitou: '$arquivo'"
	arquivo=$(eval echo "$arquivo")
	echo "Caminho após expansão do '$arquivo'"
	if [ -f "$arquivo" ]; then
		shred -u -n 10 -z "$arquivo"
		echo -e "${GREEN}Aquivo encriptado e  excluido com sucesso!${RESET}"
	else
		echo -e "${RED} Arquivo não  localizado!${RESET}"
		echo "Procurando o arquivo: $arquivo"
		if [ -d "$(dirname "$arquivo")" ]; then
		   echo "O diretório existe, mas o arquivo não foi encontrado."
		   ls -l "$arquivo"
		else
			echo "O caminho não existe"
			echo "Diretorio atual: $(/bin/pwd)"
			echo "Listando o dietorio pai: $(dirname "$arquivo")"
			ls -l "$(dirname "$arquivo")" 2>/dev/null || echo "Diretório pai não acessivel"

		fi
	fi
	;;
2)
	read -p "Entre com o caminho da pasta: " pasta
	read -p "Digite um nome para o arquivo que sera criado (sem extensão nenhuma):  " nome_arq
	if [ -d "$pasta" ]; then
	zip -r  "$nome_arq.zip" "$pasta"
	openssl rand -base64 32> "$nome_arq.zip"
	shred -u "$nome_arq.zip"
	echo "Pasta deletada... Dados subscritos e apagados com segurança"
	else
		echo "Pasta não localizada!"
	fi
	;;

3)
    read -p "Entre com o caminho do arquivo: " arquivo
    arquivo=$(eval echo "$arquivo")
        if [ -f "$arquivo" ]; then
            split -n b/3 "$arquivo" parte_
            for parte in parte_*; do
                shred -u -n 10 -z "$parte"
            done
            fi
            ;;

4)
        echo "[+] Saindo do programa..."
        sleep 1
        clear

        ;;
    esac
