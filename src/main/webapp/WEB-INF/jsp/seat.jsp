<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>选座购票</title>
</head>

<script src="${pageContext.request.contextPath}/js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/toubu.css"/>
<link href="${pageContext.request.contextPath}/css/style.css" type="text/css" rel="stylesheet" media="all">

<style type="text/css">
    body {
        background: #2E323B;
    }

    .soldTicket {
        width: 35px;
        height: 20px;
        display: block;
        background: black;
        color: white;
        border-radius: 5px;
        pointer-events: none;
    }

    #font td {
        width: 40px;
        height: 20px;

    }

    #font font {
        width: 40px;
        border-radius: 5px;
        /*background: #bcf1be;*/
        background: #bcd1f1;
        /*禁止点击*/
        /*pointer-events: none;*/
    }

    .lockTicket {
        width: 35px;
        height: 20px;
        display: block;
        cursor: pointer;
        background: black;
        color: indianred;
    }

    #font font:hover {
        cursor: pointer;
        background: #72b778;
        color: white;
    }

    .seatInfo {
        cursor: pointer;
        margin: 5px;
        float: left;
        text-align: center;
        width: 35px;
        height: 20px;
        display: block;
        background: #7b85ad;
        color: white;
        border-radius: 5px;
    }

    #font .soldTicket:hover {
        width: 35px;
        height: 20px;
        display: block;
        background: black;
        color: white;
        border-radius: 5px;
        pointer-events: none;
    }

    .soldTicket:hover {
        width: 35px;
        height: 20px;
        display: block;
        background: black;
        color: white;
        border-radius: 5px;
        pointer-events: none;
    }

    #font .soldTicket {
        width: 35px;
        height: 20px;
        display: block;
        background: black;
        color: white;
        border-radius: 5px;
    }
</style>

<body>

<div class="container detailed">
    <div class="container" style="margin-top: 20px;">
        <div><strong id="biaoti" style="font-size: 20px;">售票:
            <font id="dianyan" style="font-size: 20px">${detailVo.filmName}</font><font
                    style="font-size: 16px;color: #adadad">（${detailVo.roomName}）</font></strong></div>
    </div>
    <div class="row" style="margin-left: 60px; margin-top: 20px;">
        <table border="0px" class="col-lg-5">
            <thead>
            <tr align="center">
                <td width="20px"></td>
                <td colspan="9" style="background: #999; width: 500px; height:35px; border-radius: 10px;">
                    <strong>屏幕</strong></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            </thead>

            <tbody id="font" align="center">
            <tr>
                <td>1</td>
                <td><font id="1-1" style="display: block;">1<font style="display: none;">1-1</font></font></td>
                <td><font id="1-2" style="display: block;">2<font style="display: none;">1-2</font></font></td>
                <td><font id="1-3" style="display: block;">3<font style="display: none;">1-3</font></font></td>
                <td><font id="1-4" style="display: block;">4<font style="display: none;">1-4</font></font></td>
                <td><font id="1-5" style="display: block;">5<font style="display: none;">1-5</font></font></td>
                <td><font id="1-6" style="display: block;">6<font style="display: none;">1-6</font></font></td>
                <td><font id="1-7" style="display: block;">7<font style="display: none;">1-7</font></font></td>
                <td><font id="1-8" style="display: block;">8<font style="display: none;">1-8</font></font></td>
                <td><font id="1-9" style="display: block;">9<font style="display: none;">1-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>2</td>
                <td><font id="2-1" style="display: block;">1<font style="display: none;">2-1</font></font></td>
                <td><font id="2-2" style="display: block;">2<font style="display: none;">2-2</font></font></td>
                <td><font id="2-3" style="display: block;">3<font style="display: none;">2-3</font></font></td>
                <td><font id="2-4" style="display: block;">4<font style="display: none;">2-4</font></font></td>
                <td><font id="2-5" style="display: block;">5<font style="display: none;">2-5</font></font></td>
                <td><font id="2-6" style="display: block;">6<font style="display: none;">2-6</font></font></td>
                <td><font id="2-7" style="display: block;">7<font style="display: none;">2-7</font></font></td>
                <td><font id="2-8" style="display: block;">8<font style="display: none;">2-8</font></font></td>
                <td><font id="2-9" style="display: block;">9<font style="display: none;">2-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>3</td>
                <td><font id="3-1" style="display: block;">1<font style="display: none;">3-1</font></font></td>
                <td><font id="3-2" style="display: block;">2<font style="display: none;">3-2</font></font></td>
                <td><font id="3-3" style="display: block;">3<font style="display: none;">3-3</font></font></td>
                <td><font id="3-4" style="display: block;">4<font style="display: none;">3-4</font></font></td>
                <td><font id="3-5" style="display: block;">5<font style="display: none;">3-5</font></font></td>
                <td><font id="3-6" style="display: block;">6<font style="display: none;">3-6</font></font></td>
                <td><font id="3-7" style="display: block;">7<font style="display: none;">3-7</font></font></td>
                <td><font id="3-8" style="display: block;">8<font style="display: none;">3-8</font></font></td>
                <td><font id="3-9" style="display: block;">9<font style="display: none;">3-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>4</td>
                <td><font id="4-1" style="display: block;">1<font style="display: none;">4-1</font></font></td>
                <td><font id="4-2" style="display: block;">2<font style="display: none;">4-2</font></font></td>
                <td><font id="4-3" style="display: block;">3<font style="display: none;">4-3</font></font></td>
                <td><font id="4-4" style="display: block;">4<font style="display: none;">4-4</font></font></td>
                <td><font id="4-5" style="display: block;">5<font style="display: none;">4-5</font></font></td>
                <td><font id="4-6" style="display: block;">6<font style="display: none;">4-6</font></font></td>
                <td><font id="4-7" style="display: block;">7<font style="display: none;">4-7</font></font></td>
                <td><font id="4-8" style="display: block;">8<font style="display: none;">4-8</font></font></td>
                <td><font id="4-9" style="display: block;">9<font style="display: none;">4-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>5</td>
                <td><font id="5-1" style="display: block;">1<font style="display: none;">5-1</font></font></td>
                <td><font id="5-2" style="display: block;">2<font style="display: none;">5-2</font></font></td>
                <td><font id="5-3" style="display: block;">3<font style="display: none;">5-3</font></font></td>
                <td><font id="5-4" style="display: block;">4<font style="display: none;">5-4</font></font></td>
                <td><font id="5-5" style="display: block;">5<font style="display: none;">5-5</font></font></td>
                <td><font id="5-6" style="display: block;">6<font style="display: none;">5-6</font></font></td>
                <td><font id="5-7" style="display: block;">7<font style="display: none;">5-7</font></font></td>
                <td><font id="5-8" style="display: block;">8<font style="display: none;">5-8</font></font></td>
                <td><font id="5-9" style="display: block;">9<font style="display: none;">5-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>6</td>
                <td><font id="6-1" style="display: block;">1<font style="display: none;">6-1</font></font></td>
                <td><font id="6-2" style="display: block;">2<font style="display: none;">6-2</font></font></td>
                <td><font id="6-3" style="display: block;">3<font style="display: none;">6-3</font></font></td>
                <td><font id="6-4" style="display: block;">4<font style="display: none;">6-4</font></font></td>
                <td><font id="6-5" style="display: block;">5<font style="display: none;">6-5</font></font></td>
                <td><font id="6-6" style="display: block;">6<font style="display: none;">6-6</font></font></td>
                <td><font id="6-7" style="display: block;">7<font style="display: none;">6-7</font></font></td>
                <td><font id="6-8" style="display: block;">8<font style="display: none;">6-8</font></font></td>
                <td><font id="6-9" style="display: block;">9<font style="display: none;">6-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>7</td>
                <td><font id="7-1" style="display: block;">1<font style="display: none;">7-1</font></font></td>
                <td><font id="7-2" style="display: block;">2<font style="display: none;">7-2</font></font></td>
                <td><font id="7-3" style="display: block;">3<font style="display: none;">7-3</font></font></td>
                <td><font id="7-4" style="display: block;">4<font style="display: none;">7-4</font></font></td>
                <td><font id="7-5" style="display: block;">5<font style="display: none;">7-5</font></font></td>
                <td><font id="7-6" style="display: block;">6<font style="display: none;">7-6</font></font></td>
                <td><font id="7-7" style="display: block;">7<font style="display: none;">7-7</font></font></td>
                <td><font id="7-8" style="display: block;">8<font style="display: none;">7-8</font></font></td>
                <td><font id="7-9" style="display: block;">9<font style="display: none;">7-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>8</td>
                <td><font id="8-1" style="display: block;">1<font style="display: none;">8-1</font></font></td>
                <td><font id="8-2" style="display: block;">2<font style="display: none;">8-2</font></font></td>
                <td><font id="8-3" style="display: block;">3<font style="display: none;">8-3</font></font></td>
                <td><font id="8-4" style="display: block;">4<font style="display: none;">8-4</font></font></td>
                <td><font id="8-5" style="display: block;">5<font style="display: none;">8-5</font></font></td>
                <td><font id="8-6" style="display: block;">6<font style="display: none;">8-6</font></font></td>
                <td><font id="8-7" style="display: block;">7<font style="display: none;">8-7</font></font></td>
                <td><font id="8-8" style="display: block;">8<font style="display: none;">8-8</font></font></td>
                <td><font id="8-9" style="display: block;">9<font style="display: none;">8-9</font></font></td>
            </tr>
            <tr>
                <td style="height: 10px;"></td>
            </tr>
            <tr>
                <td>9</td>
                <td><font id="9-1" style="display: block;">1<font style="display: none;">9-1</font></font></td>
                <td><font id="9-2" style="display: block;">2<font style="display: none;">9-2</font></font></td>
                <td><font id="9-3" style="display: block;">3<font style="display: none;">9-3</font></font></td>
                <td><font id="9-4" style="display: block;">4<font style="display: none;">9-4</font></font></td>
                <td><font id="9-5" style="display: block;">5<font style="display: none;">9-5</font></font></td>
                <td><font id="9-6" style="display: block;">6<font style="display: none;">9-6</font></font></td>
                <td><font id="9-7" style="display: block;">7<font style="display: none;">9-7</font></font></td>
                <td><font id="9-8" style="display: block;">8<font style="display: none;">9-8</font></font></td>
                <td><font id="9-9" style="display: block;">9<font style="display: none;">9-9</font></font></td>
            </tr>
            </tbody>
        </table>
        <div class="col-lg-6" id="screenings" style=" width: 450px; margin-top: 10px;">
            <strong style="float: right;">已出售:
                <font style="float: right;" class="soldTicket"></font>
            </strong>
            <div class="row">
                <div id="zuowei" class="col-lg-2" style="width: 300px; margin-top: 20px; ">
                    <strong>已选：</strong>
                    <div id="po" style="margin-left: 30px;">
                        <font id="yi"></font>
                    </div>
                </div>
                <strong style="margin-left: 15px; display: block;float: left; width: 200px;">费用:￥
                    <font style="color: red; font-size: 16px;" id="money"></font>
                </strong>
            </div>
        </div>

    </div>

    <div align="center">
        <font id="gou"
              class="btn btn-danger glyphicon glyphicon-shopping-cart">购票</font>
    </div>
</div>


</body>

<script type="text/javascript">
    $(function () {
        var money = ${detailVo.price};

        /*统计选中了多少票*/
        var cnt = 0;

        $("#font font").removeClass("soldTicket");
        $().ready(function () {
            $.ajax({
                type: "get",
                url: "sold",
                data: {
                    playId: ${detailVo.playId}
                },
                dataType: "json",
                success: function (data) {
                    $.each(data, function (index, info) {
                        var i = 81;
                        for (var a = 0; a < i; a++) {
                            if ($("#font font font").eq(a).text() == info) {
                                $("#font font font").eq(a).parent().addClass("soldTicket");
                            }
                        }
                    });
                }
            });
        });


        /*在选座表进行添加座位与已选取消*/
        $("#font").on("click", "font", function () {
            var text = $(this).children().text();
            // 如果是一个被选中的座位  将座位数量-1   订单价格随之变化
            // 如果是一个未被选中的座位  将座位数量+1
            // 如果是一个已售出的座位  将座位数量不变
            if ($(this).hasClass("lockTicket")) {
                var a = [];
                a = $(".seatInfo").text();
                var i = 0;
                for (i; i < a.length;) {
                    var arr = a[i] + a[i + 1] + a[i + 2];
                    if (text == arr) {
                        var x = 0;
                        for (x; x < a.length;) {
                            if (text == $(".seatInfo").eq(x).text()) {
                                $(".seatInfo").eq(x).remove();
                                cnt -= 1;
                                $("#money").text(money * cnt);
                            }
                            x++;
                        }
                        $(this).removeClass("lockTicket");
                    }
                    i += 3;
                }
            } else if ($(this).hasClass("soldTicket")) {
                return;
            } else {
                // 先将座位的样式  设置为以锁定的状态
                $(this).addClass("lockTicket");
                // 增加选择的座位数量  更新订单价格
                cnt += 1;
                $("#money").text(money * cnt);
                // 在已选的显示框中  显示出已选的座位位置
                var piao = "<font class='seatInfo'>" + text + "</font>";
                $("#yi").after(piao);
            }
        })

        /*在已选处点击取消*/
        $("#po").on("click", "font", function () {
            var a = $(this).text();
            var table = $("#font font font").text();
            var i = 0;
            for (i; i < table.length;) {
                var arr = table[i] + table[i + 1] + table[i + 2];
                if (a == arr) {
                    var x = 0;
                    for (x; x < table.length;) {
                        if ($("#font font font").eq(x).text() == a) {
                            $("#font font font").eq(x).parent().removeClass("lockTicket");
                            $(this).remove();
                            cnt -= 1;
                            $("#money").text(money * cnt);
                        }
                        x++;
                    }
                }
                i += 3;
            }

        })

        $("#gou").click(function () {

            $.ajax({
                type: "post",
                url: "buy",
                data: {
                    playId:${detailVo.playId},
                    cnt: cnt,
                    seatStr: $(".seatInfo").text()
                },
                dataType: "json",
                success: function (data) {
                    if (data == 1) {
                        alert("成功购买" + cnt + "张票");
                    } else {
                        alert("购买失败");
                    }
                    // 应该刷新当前页面
                    window.location.reload();
                }

            });


        })


    })
</script>
</html>
