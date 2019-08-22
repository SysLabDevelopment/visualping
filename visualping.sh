# Auth
LOGIN=syslabagency@gmail.com
PASSWORD=megalongpassword
curl 'https://visualping.io/api/auth/authenticate' -H 'origin: https://visualping.io' -H 'x-requested-with: XMLHttpRequest' -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' -H 'accept: application/json' -H 'cache-control: no-cache' -H 'authority: visualping.io' -H 'referer: https://visualping.io/login' --data '{"email":"$LOGIN","password":"$PASSWORD"}' --compressed
# Полуаченные куки взять руками
# List your VisualPing Jobs
COOKIE='PHPSESSID=8hd8l5nkjj9ue5o866hfh0ie24; AWSALB=A1Q4LnnEnKqgTkWrvmcQ7CYgrlHMpOBC36gt5LI6Jzi07C0Pej4G+eCsgbDC2eJ1+Fu1KN9WSdNixmxwol5VNAa8J2crwagecGTKhK5dFYruCI8pvR8VTcihtHKL'
curl 'https://visualping.io/api/job/list' -H 'origin: https://visualping.io' -H 'x-requested-with: XMLHttpRequest' -H 'accept: application/json' -H 'cache-control: no-cache' -H 'authority: visualping.io' -H 'referer: https://visualping.io/' -H 'cookie: $COOKIE' --compressed

# Create a new VisualPing Job
## Создать скриншот
TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Zpc3VhbHBpbmcuaW8iLCJuYmYiOjE1NDQ2NzUwODMsImlhdCI6MTU0NDY3NTA4MywiZXhwIjoxNTQ0Njc1OTgzfQ.lQlEo1kui_MXm4ejTXNA7xBnW0QLoB42XHISjXJWgm8
# Токен руками взят из запроса скопированного
URL=https://tetrika-school.ru/
curl 'https://visualping.io/api/job/screenshot' -H 'cookie: $COOKIE' -H 'origin: https://visualping.io' -H 'accept-encoding: gzip, deflate, br' -H 'accept-language: ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7' -H 'x-requested-with: XMLHttpRequest' -H 'pragma: no-cache' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36' -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' -H 'accept: application/json, text/javascript, */*; q=0.01' -H 'cache-control: no-cache' -H 'authority: visualping.io' -H 'referer: https://visualping.io/' -H 'token: $TOKEN' --data '{"url":"$URL","wait_time":"2","proxy":"0","fixed_server":0,"renderer":"PHANTOMJS"}' --compressed
# Ответ:
# {
#     "image": "/pictures/1/2018-12-13/tetrika_school.ru__1544675085.png",
#     "height": 4447,
#     "width": 1195,
#     "proxy": 0,
#     "success": true
# }
## Создать жоб
WIDTH=1000
HEIGHT=1000
IMAGE_PATH=/pictures/1/2018-12-13/tetrika_school.ru__1544675085.png
DESCRIPTION=Tetrika
curl 'https://visualping.io/api/job/create' -H 'origin: https://visualping.io' -H 'x-requested-with: XMLHttpRequest' -H 'cookie: $COOKIE' -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' -H 'accept: application/json' -H 'authority: visualping.io' -H 'referer: https://visualping.io/' \
    --data '{"email":"$LOGIN","url":"$URL","crop":{"x":0,"y":0,"width":$WIDTH,"height":$HEIGHT},"interval":"10080","trigger":"1","description":"$DESCRIPTION","wait_time":"2","image_path":"$IMAGE_PATH","proxy":"0","fixed_server":0,"mode":"visual","keyword_action":"ALL","keywords":null,"cc_enabled":null,"xpath_coordinates":{},"sref":"","wid":null,"renderer_primary":"PHANTOMJS"}' --compressed














fetch("https://visualping.io/api/auth/authenticate", {
    "credentials": "include",
    "headers": {
        "accept": "application/json, text/javascript, */*; q=0.01",
        "accept-language": "ru-RU,ru;q=0.9,en-US;q=0.8,en;q=0.7",
        "cache-control": "no-cache",
        "content-type": "application/x-www-form-urlencoded; charset=UTF-8",
        "pragma": "no-cache",
        "x-requested-with": "XMLHttpRequest"
    },
    "referrer": "https://visualping.io/login",
    "referrerPolicy": "no-referrer-when-downgrade",
    "body": JSON.stringify({
        "email": "syslabagency@gmail.com",
        "password": "megalongpassword",
    }),
    "method": "POST",
    "mode": "cors"
});
