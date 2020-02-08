#基于的基础镜像
FROM python:3.7.3

#代码添加到service文件夹
ADD ./service/countryTypeMap.py countryTypeMap.py
ADD ./service/crawler.py crawler.py
ADD ./service/db.py db.py
ADD ./service/main.py main.py
ADD ./requirements.txt /service/requirements.txt

# 设置code文件夹是工作目录
WORKDIR /service

# 安装支持
RUN pip install -r requirements.txt

CMD ["python", "/service/package/main.py"]