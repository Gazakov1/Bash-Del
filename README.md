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

