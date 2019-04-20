<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>爱魔方</title>
    <%@include file="link.jsp" %>
</head>
<body>
<%@include file="header.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-sm-8">


                <div id="myCarousel" class="carousel slide">
                    <!-- 轮播（Carousel）指标 -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
    <!-- 轮播（Carousel）项目 -->
    <div class="carousel-inner">
        <div class="item active">
            <a href="/about">
                <img src="/img/index1.jpg" alt="First slide"  width="100%"></a>
        </div>
        <div class="item">
            <a href="/about">

            <img src="/img/index2.jpg" alt="Second slide"  width="100%" href="/about">
            </a>
        </div>
        <div class="item">
            <a href="/about">


            <img src="/img/index6.jpg" alt="Third slide"  width="100%" href="/about">
            </a>
        </div>
    </div>
    <!-- 轮播（Carousel）导航 -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<div><br class="spinner"></div>

            <!-- 资讯-->
            <div class="box">
                <div class="box-header">
                    <img src="/img/view.png" alt="" class="box-title-icon">
                    <h2 class="box-title">资讯</h2>
                </div>
                <div class="box-content">
                    <ul class="article-list">
                        <li class="article-item">
                            <a href="#" class="article-type m-label m-label-info">魔方</a>
                            <aside class="col-sm-3 article-cover-box">
                                <div class="layout-table">
                                    <div class="layout-table-cell article-cover">
                                        <img src="/img/wallpaper.jpg" alt="cover">
                                    </div>
                                </div>
                            </aside>
                            <section class="col-sm-9 col-sm-offset-3">
                                <a href="/info"><h1 class="article-title">欢迎进入奇妙的魔方世界</h1></a>
                                <p class="article-abstract">文章摘要</p>
                                <div class="article-control">
                                    <a href="#" class="m-label">魔方世界</a>
                                    <a href="#" class="m-label">奇妙</a>
                                    <span class="article-time">2019年3月31日</span>
                                </div>
                            </section>
                        </li>

                        <li class="article-item">
                            <a href="#" class="article-type m-label m-label-success">hosts</a>
                            <aside class="col-sm-3 article-cover-box">
                                <div class="layout-table">
                                    <div class="layout-table-cell article-cover">
                                        <img src="https://laod.cn/wp-content/themes/begin/timthumb.php?src=https://laod.cn/wp-content/uploads/2015/07/Google.png&w=280&h=210&a=&zc=1" alt="cover">
                                    </div>
                                </div>
                            </aside>
                            <section class="col-sm-9 col-sm-offset-3">
                                <a href="https://laod.cn/hosts/google-ip-as.html"><h1 class="article-title">Google 谷歌IP地址、IP地址段、AS号码</h1></a>
                                <p class="article-abstract">Google 以下来自互联网数据分配结构，提供 googleIP地址、谷歌IP地址段、googleAS自治系统号码、谷歌AS自治系统号码。 排序 as自治系统号码 注册机构 分配IP个数 登记时间 1...</p>
                                <div class="article-control">
                                    <a href="#" class="m-label">Google</a>
                                    <a href="#" class="m-label">IP</a>
                                    <a href="#" class="m-label">AS</a>
                                    <span class="article-time">2017年5月6号</span>
                                </div>
                            </section>
                        </li>

                        <li class="article-item">
                            <section class="col-sm-12">
                                <a href="/info2"><h1 class="article-title">“魔方少年”李佳洲：国家的未来属于我们这代人</h1></a>
                                <p class="article-abstract">梁启超《少年中国说》中讲到，“少年智则国智，少年富则国富，少年强则国强，少年独立则国独立，少年自由则国自由，少年进步则国进步。”李佳洲告诉记者，他认为国家的未来都是寄托在他们这群少年身上。...</p>
                                <div class="article-control">
                                    <a href="#" class="m-label">成都报道</a>
                                    <a href="#" class="m-label">李佳洲</a>
                                    <span class="article-time">2019年03月07日</span>
                                </div>
                            </section>
                        </li>
                    </ul>
                </div>
            </div>


            <div class="block-title block-text-center">
                <div class="block-line"></div>
                <div class="block-text">
                    <strong class="tip-plain">给一个支点，魔方也能把你撬起来。</strong>
                </div>
            </div>

            <!-- 教程 -->
            <div class="box">
                <div class="box-header">
                    <img src="/img/hot.png" alt="" class="box-title-icon">
                    <h2 class="box-title">教程</h2>
                </div>
                <div class="box-content">
                    <ul class="article-list">
                        <li class="article-item">
                            <a href="#" class="article-type m-label m-label-info">金字塔</a>
                            <aside class="col-sm-3 article-cover-box">
                                <div class="layout-table">
                                    <div class="layout-table-cell article-cover">
                                        <img src="/img/cs7.jpg" alt="cover">
                                    </div>
                                </div>
                            </aside>
                            <section class="col-sm-9 col-sm-offset-3">
                                <a href="/course/1"><h1 class="article-title">金字塔魔方图解</h1></a>
                                <p class="article-abstract">一种四面体异型魔方。由德国科学家麦菲特Uwe Meffert 教授于1970年发明出，原本是他用于研究金字塔能量的模型，在研究过程中，意外的发明出魔术金字塔。</p>
                                <div class="article-control">
                                    <a href="#" class="m-label">金字塔</a>
                                    <a href="#" class="m-label">图解</a>
                                    <span class="article-time">2019年3月20日</span>
                                </div>
                            </section>
                        </li>


                    </ul>
                </div>
                <div class="box-content">
                    <ul class="article-list">
                        <li class="article-item">
                            <a href="#" class="article-type m-label m-label-info">三阶</a>
                            <aside class="col-sm-3 article-cover-box">
                                <div class="layout-table">
                                    <div class="layout-table-cell article-cover">
                                        <img src="/img/cs04.jpg" alt="cover">
                                    </div>
                                </div>
                            </aside>
                            <section class="col-sm-9 col-sm-offset-3">
                                <a href="/course/4"><h1 class="article-title">三阶魔方图解</h1></a>
                                <p class="article-abstract">魔方，在中国台湾省称为魔术方块，在中国香港特区称为扭计骰，在国外称为Rubik's Cube(鲁比克方块)。由匈牙利建筑学教授暨雕塑家鲁比克·艾尔内于1974年发明的机械益智玩具，最初的名称叫Magic Cube，1980年Ideal Toys公司于贩售此玩具，并将名称改为Rubik's Cube。</p>
                                <div class="article-control">
                                    <a href="#" class="m-label">三阶</a>
                                    <a href="#" class="m-label">图解</a>
                                    <span class="article-time">2019年3月21日</span>
                                </div>
                            </section>
                        </li>


                    </ul>
                </div>
                <div class="box-content">
                    <ul class="article-list">
                        <li class="article-item">
                            <a href="#" class="article-type m-label m-label-info">二阶</a>
                            <aside class="col-sm-3 article-cover-box">
                                <div class="layout-table">
                                    <div class="layout-table-cell article-cover">
                                        <img src="/img/cs02.jpg" alt="cover">
                                    </div>
                                </div>
                            </aside>
                            <section class="col-sm-9 col-sm-offset-3">
                                <a href="/course/2"><h1 class="article-title">二阶魔方（层先法）图解</h1></a>
                                <p class="article-abstract">二阶魔方（英文：Pocket Cube）又称口袋魔方、迷你魔方、小魔方、冰块魔方，为2×2×2的立方体结构。本身只有8个角块，没有其他结构的方块。结构与三阶魔方相近， 可以利用复原三阶魔方的公式进行复原。</p>
                                <div class="article-control">
                                    <a href="#" class="m-label">二阶</a>
                                    <a href="#" class="m-label">图解</a>
                                    <span class="article-time">2019年3月21日</span>
                                </div>
                            </section>
                        </li>


                    </ul>
                </div>

            </div>


            <div class="block-title block-text-center">
                <div class="block-line"></div>
                <div class="block-text">
                    <span class="tip-plain">练而不思则罔，思而不练则殆</span>
                </div>
            </div>
            <!-- 热门帖子 -->
            <div class="box">
                <div class="box-header">
                    <img src="/img/article.png" alt="" class="box-title-icon">
                    <h2 class="box-title">热门帖子</h2>
                </div>
                <div class="box-content">
                    <ul class="qt-list">
                        <li class="qt-item">
                            <!-- 用户信息 -->
                            <div class="avatar-box">
                                <a href=""><img src="img/user1-128x128.jpg" alt="" class="avatar-img"></a>
                                <a href="" class="avatar-name">aa</a>
                                <span class="avatar-sign">魔方爱好者</span>
                                <span class="avatar-annotation">2019-03-14</span>
                            </div>
                            <div class="qt-content">
                                <a href="/article/1" class="qt-title">魅力魔方</a>
                            </div>
                            <!-- 控制 -->
                            <div class="control-box">
                                <a href="#" class="control-item"><i class="fa fa-comment" aria-hidden="true"></i>&nbsp;123&nbsp;评论</a>
                                <a href="#" class="control-item"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;1000&nbsp;阅读</a>
                            </div>
                        </li>
                        <li class="qt-item">
                            <!-- 用户信息 -->
                            <div class="avatar-box">
                                <a href="#"><img src="/img/user3-128x128.jpg" alt="" class="avatar-img"></a>
                                <a href="#" class="avatar-name">ss</a>
                                <span class="avatar-sign">专注魔方</span>
                                <span class="avatar-annotation">2019-03-16</span>
                            </div>
                            <div class="qt-content">
                                <a href="#" class="qt-title">redi魔方手绘傻瓜教程</a>
                            </div>
                            <!-- 控制 -->
                            <div class="control-box">
                                <a href="#" class="control-item"><i class="fa fa-comment" aria-hidden="true"></i>&nbsp;123&nbsp;评论</a>
                                <a href="#" class="control-item"><i class="fa fa-eye" aria-hidden="true"></i>&nbsp;1000&nbsp;阅读</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>


        </div>
        <div class="col-sm-4">
            <div class="box">
                <div class="box-header">
                    <img src="/img/info-focus.png" alt="" class="box-title-icon">
                    <h2 class="box-title">公告</h2>
                </div>
                <div class="box-content">
                    <ul class="article-list">
                        <li class="article-item">
                            <p>&nbsp;</p>
                            <p class="article-abstract">本站将于六月初全面更新，敬请期待~(=~ω~=)~</p>
                            <p>&nbsp;</p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="box">
                <div class="box-header">
                    <img src="/img/shop.png" alt="" class="box-title-icon">
                    <h2 class="box-title">魔方周边</h2>
                </div>
                <div class="box-content">
                    <ul class="article-list">
                        <li class="article-item">
                            <img src="https://gaitaobao4.alicdn.com/tfscom/i1/3834069651/O1CN01ckZPTv2LACvzVuS4S_!!0-item_pic.jpg_300x300q90.jpg" width="100%">

                            <a href="https://item.taobao.com/item.htm?id=588555921271&ali_trackid=2:mm_354970035_387250268_105364900030:1554007785_150_537526927&pvid=100_11.8.223.204_80799_1541554007784234374&scm=null">
                                Z7卡通方块毛绒魔方摆饰 动漫周边毛绒玩具立方体抱枕生日礼物定
                            </a>

                        </li>
                        <li class="article-item">
                            <img src="https://gaitaobao3.alicdn.com/tfscom/i2/4137167856/O1CN0140TD1O27u5zpFPCz8_!!0-item_pic.jpg_300x300q90.jpg" width="100%">
                            <a href="https://item.taobao.com/item.htm?id=588652774185&ali_trackid=2:mm_354970035_387250268_105364900030:1554007993_124_1591739605&pvid=100_11.14.234.153_77986_4511554007993076439&scm=null">
                                意动漫卡通周边方块靠垫魔方立方体抱枕儿童毛绒抱枕来图定制Y03
                            </a>

                        </li>
                        <li class="article-item">
                            <img src="https://gaitaobao3.alicdn.com/tfscom/i5/TB2JykbaXXXXXbhXXXXXXXXXXXX_!!1961005659.jpg_300x300q90.jpg" width="100%">
                            <a href="https://item.taobao.com/item.htm?id=569361499719&ali_trackid=2:mm_354970035_387250268_105364900030:1554008131_125_1824491037&pvid=100_11.14.224.100_82346_6241554008130839042&scm=null">
                                意动漫卡通周边方块靠垫魔方立方体抱枕儿童毛绒抱枕来图定制Y03
                            </a>

                        </li>


                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>

<%@include file="footer.jsp" %>

</body>
</html>