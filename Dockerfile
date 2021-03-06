#基于的基础镜像
FROM python:3.7.3

#代码添加到code文件夹
ADD ./service/countryTypeMap.py /code/service/countryTypeMap.py
ADD ./service/crawler.py /code/service/crawler.py
ADD ./service/db.py /code/service/db.py
ADD ./main.py /code/main.py
ADD ./requirements.txt /code/requirements.txt

# 设置code文件夹是工作目录
WORKDIR /code

# 安装支持
RUN pip install --upgrade pip
RUN pip install -r requirements.txt -i http://pypi.douban.com/simple/ --trusted-host pypi.douban.com
#设置时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

CMD ["python", "main.py"]