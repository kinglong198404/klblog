#极简博客项目

- klblog的服务端工程。
- IDEA版的基于SpringCloud的微服务项目。

## 模块划分

### blog 博客
- article 文章随笔（典籍阅读笔记、观点随记）
- book_review 书籍书评（书评 书籍版本介绍 经济 金融 管理知识）
- knowlege_base 生活百科（生活经验 英语单词 野外生存知识草药 汽车品牌与知识 科技产品 消费品牌 景点知识 生活攻略 有站内搜索 ）
- profile、photo_album 个人空间、相册地图（时间轴故事 人文自然景观 风土人情 美食）

### robot 小助手
- memo 便签 代办清单
- guide 攻略
- contact 联系人


## 服务器端口分配
- nginx 	80
- klcms 8081->81
- git    8082
- showdoc 4999

klblog（blog、robot）
- api-gateway  82
- sleuth-server 9000
- config-server 8888
- eureka-server 8761-876x
- consumer-xxx 8091-8099
- provider-xxx  8061-8079

## 技术选型
- 后端微服务架构 SpringCloud springboot config euraka gateway ribbon feign hystrix sleuth + zipkin Security+OAuth2 Stream
- 后端项目技术栈 springboot springmvc mybatis mysql redis postgreSQL   

- 前端 webpack+vue（生活百科 足迹见闻 阅读笔记 技术专栏 个人简介 各版块有各自的布局和UI效果） 