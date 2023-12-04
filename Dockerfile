# Imagem base
FROM python:3.9

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copie todo o conteúdo local para o diretório de trabalho
COPY . .

# Exponha a porta em que a aplicação será executada (ajuste conforme necessário)
EXPOSE 5000

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["python", "app.py"]
