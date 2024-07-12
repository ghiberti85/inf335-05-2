# Utiliza imagem com JDK
FROM openjdk:11

# Define o diretório de trabalho
WORKDIR /app

# Copia o arquivo Java para o container
COPY OlaUnicamp.java .

# Compila o arquivo Java
RUN javac OlaUnicamp.java

# Define o comando a ser executado quando o container iniciar
CMD ["java", "OlaUnicamp"]