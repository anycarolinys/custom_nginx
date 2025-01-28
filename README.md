# Demanda 2  

Desenvolvida em ambiente WSL com Ubuntu 22.04.4 LTS e foi executada localmente utilizando o IP da máquina obtido com o comando ```ip a```.  

## **Como executar o projeto**  

1. Clone o repositório
```
git clone https://github.com/anycarolinys/custom_nginx.git
```

2. Construa a imagem do container
```
docker build -t <tag_name> .
```

3. Execute o container 
```
docker run -d -p 8080:80 <tag_name>
```

4. Deve haver um container em execução (Nginx) confira com
```
docker ps
```

5. Para acessar a página HTML
```
http://<localhost>:8080
```

6. Para encerrar a execução do container  
```
docker-compose down
```

## **Como foi desenvolvido o projeto**  

**1. Compreensão do conceito/propósito do NGINX**
- Utilizei [este artigo](https://medium.com/@evmaperry/nginx-c450b5d2c07f) para teoria  
- Utilizei [este artigo](https://www.docker.com/blog/how-to-use-the-official-nginx-docker-image/) como ponto de partida do desenvolvimento  
\*Os materiais não são lidos/vistos por completo, normalmente vou pulando até a parte que me interessa para agilizar o desenvolvimento

**2. Desenvolvimento do Dockerfile e nginx.conf**
- Para o Dockerfile utilizei os artigos citados anteriormente
- Para o nginx.conf utilizei [este repositório](https://github.com/pmckeetx/docker-nginx/blob/master/frontend/nginx/nginx.conf) como base

## **Resultados**
- A configuração do Nginx deve estar adequada para o servidor responder na porta 80  
```
listen 80;
```  
em ```nginx.conf```  

## **Principais dificuldades**  

**1. Configuração do arquivo nginx.conf**
- Não conhecia os parâmetros necessários, utilizei o arquivo de exemplo como base e removi os parâmetros não essenciais

## **O que poderia ter sido melhorado/realizado com mais tempo**  
- Poderia ter sido desenvolvida uma aplicação com front-end e back-end para ser servida pelo NGINX

## **Principais aprendizados**  
- Compreensão do papel do NGINX
- Configuração dos parâmetros de um servidor NGINX

