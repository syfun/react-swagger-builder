# React Swagger

## Build local

```
npm install
REACT_APP_API_URL=https://example/com/openapi.yaml npm run build
serve -s build
```

## Build with docker

```
docker build -t openapi:latest \
    --build-arg REACT_APP_API_URL=https://example/com/openapi.yaml .

docker run -it --rm -p 8080:80 openapi:latest 
```