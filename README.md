# Bash-Del
Script em Bash feito para deletar arquivos de forma segura em sistemas Linux.

# 🧨 Bash-Del: Exclusão Segura de Arquivos

Um script em **Bash** para **deletar arquivos com segurança**, utilizando técnicas como sobrescrita, encriptação e divisão de arquivos.

---

## 🚀 Funcionalidades

- ✅ Deleta arquivos individuais com sobrescrita segura (`shred`)
- ✅ Compacta pastas e aplica criptografia (`openssl`)
- ✅ Divide arquivos em partes antes de excluir (`split`)
- ✅ Interface em linha de comando com menu interativo
- ✅ Mensagens coloridas e ASCII art no terminal 😎

---

## 📦 Requisitos

Certifique-se de ter os seguintes pacotes instalados:

```bash
split
shred
openssl
zip
```
Você pode instalar eles com:
```bash
sudo apt install coreutils openssl zip
```
## 📁 Como usar
Clone o repositório:
```bash
git clone https://github.com/Gazakov1/Bash-Del.git
cd Bash-Del
chmod +x del.sh
./del.sh
```
## 🛡️ Licença
Distribuído sob a licença MIT.

## 📸 Preview
```bash
      __         ___     
     /\ \       /\_ \    
     \_\ \  ___ \//\ \   
   /_ \ \/ __\ \  \ \    
  /\ \L\ \/ \  __/ \_\ \_  
  \ \___,_\  \____\/\____\ 
   \/__,_ / \/____/\/____/

Escolha uma das opções a baixo para deletar arquivos de forma segura

-------------> 1- Deletar apenas um arquivo
-------------> 2- Deletar todos os arquivos de uma pasta
-------------> 3- Dividir e deletar
-------------> 4- Sair do programa
Digite --->  


```
Criado por Gazakov ☠️

---

### 🛠 Como adicionar esse README no seu repositório:

1. Crie o arquivo:
```bash
nano README.md
```
1- Cole o conteúdo acima.

2- Salve com CTRL+O e saia com CTRL+X.

3- Faça o commit:
```bash
git add README.md
git commit -m "Adicionando README estilizado"
git push

