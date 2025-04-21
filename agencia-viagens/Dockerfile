# Etapa 1: Construção do aplicativo (build)
FROM azul/zulu-openjdk:21 as builder

# Definindo o diretório de trabalho
WORKDIR /app

# Instalando o Maven
RUN apt-get update && apt-get install -y maven

# Copiando o arquivo pom.xml e o código-fonte
COPY pom.xml .
COPY src ./src

# Instalando as dependências e compilando o aplicativo
RUN mvn clean install

# Etapa 2: Configuração do container de execução
FROM azul/zulu-openjdk:21

# Definindo o diretório de trabalho
WORKDIR /app

# Copiando o artefato gerado para o container
COPY --from=builder /app/target/agencia-viagens-1.0.0-SNAPSHOT.jar app.jar

# Expondo a porta para o aplicativo
EXPOSE 8080

# Comando para iniciar o aplicativo
ENTRYPOINT ["java", "-jar", "app.jar"]
