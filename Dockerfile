FROM microsoft/dotnet
 
# 进入docker中的/usr/local/src目录
RUN cd /usr/local/src
 
# 创建DockerWebAPI目录
RUN mkdir DockerWebAPI
 
# 设置工作路径
WORKDIR /usr/local/src/DockerWebAPI
 
# 将当前文件夹下的所有文件全部复制到工作目录
COPY *.* ./
 
EXPOSE 5000
 
# 执行dotnet DockerWebAPI.dll命令
CMD ["dotnet", "DockerWebAPI.dll"]