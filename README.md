# Docker 실전 연습 예제입니다.
### Installation
<pre>
cd /home
git clone https://github.com/yeriahn/Docker-Practice.git
cd Docker-Practice
</pre>
###Run
<pre>
#Login For Private Docker Repository
docker login
docker pull ye0108/docker-practice
docker run -p 80:80 -v /home/Docker-Practice/Project:/var/www/html docker-practice
</pre>
