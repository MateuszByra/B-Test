docker build -t yeasy/simple-web:test -t yeasy/simple-web:latest -f ./Dockerfile .

docker tag yeasy/simple-web:test registry.heroku.com/b-photogallery/web
docker push registry.heroku.com/b-photogallery/web

heroku container:release web