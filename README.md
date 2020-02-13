# 2019新型冠状病毒疫情实时爬虫


简体中文

本项目为2019新型冠状病毒（2019-nCoV）疫情状况的实时爬虫，数据来源为[丁香园](https://3g.dxy.cn/newh5/view/pneumonia)。<br>
项目源码来自https://github.com/BlankerL/DXY-2019-nCoV-Data.git；<br>
感谢大神的分享<br>
我只是在此基础上增加docker，便于打包成docker镜像;<br>并修改爬取时间为10分钟一次；

TODO:<br>
修改数据库存储为mysql;<br>
增加疫情小区数据爬取；
<br>
<br>
docker打包命令：<br>
docker build -t ncov:v1.0 .<br>
docker run -itd --name ncov --restart always ncov:v1.0<br>
因为此项目主要用来爬取数据，因此docker run时不开放任何接口

