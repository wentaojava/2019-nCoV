# 2019新型冠状病毒疫情实时爬虫


简体中文

本项目为2019新型冠状病毒（2019-nCoV）疫情状况的实时爬虫，数据来源为[丁香园](https://3g.dxy.cn/newh5/view/pneumonia)。<br>
项目源码来自https://github.com/BlankerL/DXY-2019-nCoV-Data.git；<br>
感谢大神的分享<br>
我在其基础上增加docker，便于打包成docker镜像;<br>
修改爬取时间为半小时一次；<br>
去除自己前端项目不需要数据的爬取<br>
优化爬取数据的存储逻辑

TODO:<br>
修复疑似人数未获取;<br>
增加疫情小区数据爬取;
<br>
<br>
docker打包命令：<br>
docker build -t ncov-python:v1.0 .<br>
docker run -itd --name ncov-python --restart always ncov-python:v1.0<br>
因为此项目主要用来爬取数据，因此docker run时不开放任何接口

