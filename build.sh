
git clone https://github.com/vuejs/vuepress.git

#build.sh和dockerfile同目录放置
sudo docker build -t qitas/vuepress .

#启动容器
sudo docker run -itd -p 8888:8888 --name vuepress qitas/vuepress
