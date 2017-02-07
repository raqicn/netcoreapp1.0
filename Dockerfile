FROM microsoft/dotnet
 
# ����docker�е�/usr/local/srcĿ¼
RUN cd /usr/local/src
 
# ����DockerWebAPIĿ¼
RUN mkdir DockerWebAPI
 
# ���ù���·��
WORKDIR /usr/local/src/DockerWebAPI
 
# ����ǰ�ļ����µ������ļ�ȫ�����Ƶ�����Ŀ¼
COPY *.* ./
 
EXPOSE 5000
 
# ִ��dotnet DockerWebAPI.dll����
CMD ["dotnet", "DockerWebAPI.dll"]