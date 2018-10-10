
FROM node
LABEL author="qitas"
MAINTAINER Qitas 

# 将VuePress作为一个本地依赖安装
RUN npm install -D vuepress

RUN mkdir vuepress
RUN cd vuepress
# 新建一个 docs 文件夹
RUN mkdir docs
# 创建容器内的项目存放目录
#RUN mkdir -p /home/nodeapp WORKDIR /home/nodeapp 
# 将Dockerfile当前目录下所有文件拷贝至容器内项目目录并安装项目依赖 
COPY . . RUN npm install 
# 容器对外暴露的端口号，要和node项目配置的端口号一致 
EXPOSE 8888 

RUN npm install -g vuepress


# 新建一个 markdown 文件
echo '# Hello VuePress!' > docs/README.md
# 开始写作
npx vuepress dev docs

# Install 0.x.x.
yarn add vuepress -D    
# Install next. 
yarn add vuepress@next -D  
# 容器启动时执行的命令 
CMD [ "npm", "start" ]