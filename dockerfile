# Usa uma imagem oficial do Node.js como base
FROM node:18

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia todos os arquivos do projeto para o container
COPY . .

# Instala o Mintlify globalmente (para evitar dependências locais)
RUN npm install -g mintlify

# Expõe a porta que o Mintlify usa (por padrão, 3000)
EXPOSE 3000

# Comando para rodar o Mintlify no modo de desenvolvimento
CMD ["mintlify", "dev"]
