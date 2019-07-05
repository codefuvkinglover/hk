<%--
  Created by IntelliJ IDEA.
  User: whiteman
  Date: 2019-07-02
  Time: 23:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <script>
        window.NVC_Opt = {
            appkey: 'FFFF0N00000000007F32',
            scene: 'ic_register',
            renderTo: '#captcha',
            trans: {"key1": "code0", "nvcCode": 200},
            elements: [
                '//img.alicdn.com/tfs/TB17cwllsLJ8KJjy0FnXXcFDpXa-50-74.png',
                '//img.alicdn.com/tfs/TB17cwllsLJ8KJjy0FnXXcFDpXa-50-74.png'
            ],
            bg_back_prepared: '//img.alicdn.com/tps/TB1skE5SFXXXXb3XXXXXXXXXXXX-100-80.png',
            bg_front: 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABQCAMAAADY1yDdAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAADUExURefk5w+ruswAAAAfSURBVFjD7cExAQAAAMKg9U9tCU+gAAAAAAAAAIC3AR+QAAFPlUGoAAAAAElFTkSuQmCC',
            obj_ok: '//img.alicdn.com/tfs/TB1rmyTltfJ8KJjy0FeXXXKEXXa-50-74.png',
            bg_back_pass: '//img.alicdn.com/tfs/TB1KDxCSVXXXXasXFXXXXXXXXXX-100-80.png',
            obj_error: '//img.alicdn.com/tfs/TB1q9yTltfJ8KJjy0FeXXXKEXXa-50-74.png',
            bg_back_fail: '//img.alicdn.com/tfs/TB1w2oOSFXXXXb4XpXXXXXXXXXX-100-80.png',
            upLang: {
                "cn": {
                    _ggk_guide: "请摁住鼠标左键，刮出两面盾牌",
                    _ggk_success: "恭喜您成功刮出盾牌<br/>继续下一步操作吧",
                    _ggk_loading: "加载中",
                    _ggk_fail: ['呀，盾牌不见了<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题'],
                    _ggk_action_timeout: ['我等得太久啦<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题'],
                    _ggk_net_err: ['网络实在不给力<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题'],
                    _ggk_too_fast: ['您刮得太快啦<br/>请', "javascript:noCaptcha.reset()", '再来一次', '或', "http://survey.taobao.com/survey/QgzQDdDd?token=%TOKEN", '反馈问题']
                }
            }
        }
    </script>

    <script src="//g.alicdn.com/sd/nvc/1.1.112/guide.js"></script>
    <script language="JavaScript" src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <script language="JavaScript" src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js"></script>
    <script language="JavaScript" src="https://cdn.bootcss.com/jquery-json/2.6.0/jquery.json.min.js"></script>
    <script>
        window.onload = function () {
            var ic = new smartCaptcha({
                renderTo: '#sc',
                width: 300,
                height: 42,
                default_txt: '点击按钮开始智能验证',
                success_txt: '验证成功',
                fail_txt: '验证失败，请在此点击按钮刷新',
                scaning_txt: '智能检测中',
                success: function (data) {
                    $("#submit").attr("disabled",true);
                },
            });
            ic.init();
        }

    </script>
</head>
<body>
<script src="//g.alicdn.com/sd/smartCaptcha/0.0.4/index.js"></script>
<script src="//g.alicdn.com/sd/quizCaptcha/0.0.1/index.js"></script>
<form action="./passengerTicket/loginUser.do" method="post">
    <input type="text" name="bpCode"/>
    <input type="password" name="bpPassword"/></br>
<%--    <div id="sc">--%>
<%--    </div>--%>
    <input type="submit" value="提交" id="submit"/>
</form>
</body>
</html>
