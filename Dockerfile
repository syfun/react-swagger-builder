FROM node:12.13.1 AS build-env
WORKDIR /app
COPY package.json /app/package.json
RUN npm install 

ADD . /app
ARG REACT_APP_API_URL=https://example.com/openapi.yaml
RUN REACT_APP_API_URL=${REACT_APP_API_URL} npm run build

FROM nginx:1.17.6-alpine 
COPY --from=build-env /app/build /usr/share/nginx/html