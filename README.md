# **《艺文志》小程序文档**

## 1. **项目介绍与目的(wjj)**

​	求学必从读书开始。但书籍之多往往让人眼花缭乱，无从下手，加之各色出版物鱼龙混杂，常令人感到头疼。倘欲了解某门类，又常乏贤师引介，随手购书，难保不会误入歧途。故生一念，将诸类良书按从入门到进阶拟为书单，并附有简介，读者可省盲目挑选之繁苦，不妨聊目之为赛博艺文志也。又如《礼记》言，“独学而无友，则孤陋而寡闻”，故加上了发帖、评论功能，读者可共书友校雠铅椠、执经问难、染翰操觚，拾此阶上，当日有精进。

​	成员分工：

​	github地址：

## **2. 使用技术**

###  **1. 后端技术**

###  **2. 展示页面**

（一）启动页面

​              1.自动获取用户头像和昵称并存入后端

此处曾尝试使用点击按钮获取用户头像昵称，但是非常不巧，在2022年的11月9日，为了减少不合理的强迫授权，保护用户隐私，微信小程序官方调整了用户头像昵称的获取规则，收回了wx.getUserProfile 接口和wx.getUserInfo 接口。因此这里采用的是官方文档里给的自动授权方法，不再要求用户确认授权。

![img](https://docimg1.docs.qq.com/image/AgAABUI-L0NB-Radkr5I1ZrqdWGXPs2o.png?w=832&h=284)

​              2.点击组件实现index页面跳转

​                 跳转tabBar，使用wx.switchTab而不是wx.navigateTo。

![img](https://docimg4.docs.qq.com/image/AgAABUI-L0MsR4Ydz2FFVIEYylTQU14l.png?w=680&h=288)

​       （二）总体框架

​     	1.标题与主题颜色

​                实现了顶部标题与主题颜色的更改。

​         2.实现了底部导航栏tabBar与图标的更改

​                     tabBar的实现：

​                     点击图标，图标的明暗会变化，这是通过两个不同的图片实现的。

![img](https://docimg2.docs.qq.com/image/AgAABUI-L0Op6zVGd-pDm6scOdrPcH0l.png?w=868&h=464)

（三）展示页面

1.自动轮播

autoplay就是自动播放控件，interval就是时间控件。

![img](https://docimg5.docs.qq.com/image/AgAABUI-L0PjupBPp7dI46fkae4gEmct.png?w=866&h=84)

![img](https://docimg4.docs.qq.com/image/AgAABUI-L0Pt_oSfVEBJBaOA3wfelbkj.png?w=868&h=138)

![img](https://docimg4.docs.qq.com/image/AgAABUI-L0PiZ_NgmYJDoY2T7c8Hh_vh.png?w=868&h=506)

​             右下角的图片标号（n/3）是用记录currentIndex的方法实现的。

​              2.点击图片或文字实现页面跳转

名人论读书、书籍分类图标和书籍展示的详情页都使用了页面跳转，使用的是navigator。

这里与前面的wx.switchTab做了区分，因为是在页面之间互相跳转，而不是跳转到tabBar。一开始没注意区别，实现出现错误。

​              3.与后端的连接



###  **3. 交流空间**

使用了原生小程序前端技术，主要是轮播图、背景、样式等，力求界面大气美观的同时方便阅读。同时在适当的时间从后端获取数据，前后端结合。

![img](https://docimg10.docs.qq.com/image/AgAABUI-L0NDsmBcTahDvrRdIYj51SGZ.png?w=831&h=596)

###    **4. 发表评论**

​	1、学习了wx.navigationg来实现跳转，避免了将大量功能完成在一个页面中，减轻了后期维护，和进一步开发，增添功能的负担与复杂度更加符合封装的思路。

​        2、简单了解了各类组件的区别，使页面展示更方便翻阅。如：起初采用text是单行文本框，从而在内容较多时，文本不便阅读，转而采用多行文本框textarea，增加了文本的可读性。button 文字，尺寸背景，以及和image，text 等结合，使的button不在过于单调，更加贴合主题风格。以及view，image函数bintap 传参等各类基础组件的功能了解，使用。

​       3、学习了各个组件的布局。如采用 display：flex弹性布局，取缔float等来使得布局更加多样性，丰富布局风格；了解了Z轴等使用，来实现个插件之间覆盖的问题，不同于position: fixed的强制定位，其随页面的下滑也随之变化，造成页面布局混狂。但也了解到了以此可以实现悬浮框。为后续开发学习积累经验。



###    **5. 云技术**

## **3. 项目功能**

###    **1. 展示页面**

启动页面自动获取用户的头像昵称信息，用以后续的发帖与互动。用户点击以启动程序，增加与用户的互动感与小程序的整体感。

​              1.轮播图

首页顶部设置轮播图，自动滚动，图文并茂，介绍了邺侯架、三味书屋、礼记等典故，令用户仿佛身处琅嬛福地。

​              2.名人论读书

下方有培根、朱光潜等先贤论读书之精彩片段，读者可以借鉴前人读书态度方法。

​              3.图书分类索引

有科学、文学、历史、计算机、哲学、艺术等六个门类的书单，点击相应图标可以看到按照入门到进阶到专业的次第推荐。列表列出了书名、封面、作者、简介，书名右侧是其对应难度划分。列表与后端链接，动态更新。

​              4.详情页面

列表中的每本图书均可进入详情页面，这里有自撰的推荐语或评价，亦有网络上对本书的推荐。详情页面与图书一一对应，均通过后端连接，也实现了动态更新。

## 

###    **2. 交流空间**

 1.子功能：从后端获取数据并保存在页面data的article数组里，通过循环将其展示在界面上。

![img](https://docimg1.docs.qq.com/image/AgAABUI-L0Pp8BG1lBlL0YwyM2uJGKem.png?w=831&h=78)

贴图：

（1）.背景图，挑选了合适的透明度，兼顾了帖子的观感和页面的美感。

![img](https://docimg10.docs.qq.com/image/AgAABUI-L0Oc2T17W6JILI2sP-d4-gr2.png?w=462&h=237)

（2）.采用了合适的布局和样式让贴主信息，帖子内容和点赞等页面的观感大幅提升。



###    **3. 发表评论**

​     1、对页面做了优化

​           从一开始单一的封面图片和发表评论，改为采用展示个人信息和功能按钮。通过点击按钮，实现对相应功能页面的跳转。从而，方便后续进一步开发增加更多功能，也保证了页面的简洁、明了。同时，也对页面做了简单美化。

​               ![img](https://docimg6.docs.qq.com/image/AgAACEUvl3_Q42xB379BOZ-sZKhLJPXb.png?imageMogr2/thumbnail/1600x%3E/ignore-error/1)                        ![img](https://docimg2.docs.qq.com/image/AgAACEUvl3_OSxuC0ihOI69rlijFSGDC.png?imageMogr2/thumbnail/1600x%3E/ignore-error/1)

​    2、实现了用户发表评论、修改签名。通过点击相应按钮 跳转到i相应的具体界面 完成修	改。以下，以修改签名为例。

​                     ![img](https://docimg9.docs.qq.com/image/AgAACEUvl3_-RRBc-CJFiq5YK7owIOUy.png?imageMogr2/thumbnail/1600x%3E/ignore-error/1)

 3、可以满足用户查看自己评论的需求，查看自己发表的评论，获得的点赞等情况，以及对自己发表的评论进行删除的管理。  

​		![img](https://docimg5.docs.qq.com/image/AgAACEUvl39vReXOa5lIA4w3yZnke__a.png?imageMogr2/thumbnail/1600x%3E/ignore-error/1)                                       ![img](https://docimg1.docs.qq.com/image/AgAACEUvl3-ULY7OTcZG65XkogWYwfw_.png?imageMogr2/thumbnail/1600x%3E/ignore-error/1)

## **4. 总结反思(lar)**

（一） 学习并掌握了微信小程序开发的基本技术和流程 

在确定需求后，我们首先阅读并理解了学长的代码，对其中陌生 的技术结合微信开发文档等文档进行学习，充分掌握了本次开发过程 中需要的界面开发、云开发等技术。同时在开发过程中，充分借助 console 调试、真机调试等方式来解决 bug、保证开发的速度和质量， 体验了微信小程序的开发全流程。 

（二）通过本项目体验了团队协作开发实践 

我们在需求阶段明确每个人任务，开发过程中每周举行例会，在开发过程中逐步完善文档，最后合并整合文档。论坛功能、部分界面 美化、排行榜功能、社团图标显示、文档撰写均由不同同学负责，分 工清晰、及时跟进；在每次例会上时，我们共同攻克技术难题，互相 答疑讲解。在团队的紧密协作中，开发的各个方向工作都在高效有序进展。
