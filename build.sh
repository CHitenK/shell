#！/bin/bash
echo "starting....."
cd /data/tetris/tetris-web-origin/

git clone -b master http://106.75.169.117/cross-border-plus/jm-landing-console-page.git

cd jm-landing-console-page/

git pull origin master

npm install

sleep 1s 

cnpm install

echo "building....."
npm run build:pro

sleep 1s

cd /data/tetris/tetris-web/
rm -rf *

cp -r /data/tetris/tetris-web-origin/jm-landing-console-page/dist/* .

cd /usr/local/nginx/sbin/

./nginx -s reload

echo "done....."

  