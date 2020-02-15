#极简博客项目

- klblog的服务端工程。
- IDEA版的基于SpringCloud的微服务项目。

## 模块划分

### blog 博客
- article 文章随笔（典籍阅读笔记、观点随记）
- book_note 阅读笔记
- knowlege 知识库（生活经验 英语单词 野外生存知识草药 汽车品牌与知识 科技产品 消费品牌 景点知识 ）
- profile 我的
- photo_album 相册地图（时间轴故事 人文自然景观 风土人情 美食）

### robot 小助手
- memo 便签、攻略


## 服务器端口分配
- nginx 	80

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