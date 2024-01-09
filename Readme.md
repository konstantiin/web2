build with
```
git clone https://github.com/konstantiin/web2
cd web2
docker build --tag=wildfly-app .
docker run -it -p 8080:8080 wildfly-app
```