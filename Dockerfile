# Define a imagem base Python com Alpine (versão leve)
FROM python:3.13.4-alpine3.22

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo de dependências para o container
COPY requirements.txt .

# Instala as dependências Python sem cache para reduzir tamanho
RUN pip install --no-cache-dir -r requirements.txt

# Copia todos os arquivos da aplicação para o container
COPY . .

# Expõe a porta 9000 para acesso externo
EXPOSE 9000

# Comando para iniciar a aplicação FastAPI
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "9000"]