docker build -t yeasy/simple-web:$SHA -t yeasy/simple-web:latest -f ./Dockerfile .

docker tag yeasy/simple-web:$SHA registry.heroku.com/b-photogallery/web
docker push registry.heroku.com/b-photogallery/web

heroku container:release web