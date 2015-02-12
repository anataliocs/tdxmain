<!-- Modal -->

<script type="application/javascript">

    window.fbAsyncInit = function () {
        FB.init({
            appId: facebookApiKey,
            version: 'v2.2'
        });
    };

    (function (d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) {
            return;
        }
        js = d.createElement(s);
        js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function fbStormpathLogin() {

        FB.login(function (response) {
            if (response.authResponse) {
                var fBAuthResponse = response.authResponse.accessToken;

                var subscribeRequest = $.ajax({
                    type: "GET",
                    url: "<g:createLink controller='user' action='facebookLogin'/>" + "?accessToken=" + fBAuthResponse
                });
            } else {
                console.log('User cancelled login or did not fully authorize.');
            }
        }, {
            //scope: "public_profile,email"
            scope: "public_profile,email,user_birthday,user_about_me,user_status,user_location,user_birthday"
        });
    }

</script>

<div class="container modal fade" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div id="loginbox" style="margin-top:50px;"
                 class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                <!-- Login box -->
                <div class="panel panel-info" id="loginPanel">
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>

                        <div style="float:right; font-size: 80%; position: relative; top:-20px">
                            <button type="button" class="close" data-dismiss="modal"><span
                                    aria-hidden="true">&times;</span><span
                                    class="sr-only">Close</span></button>
                        </div>
                    </div>

                    <div style="padding-top:30px" class="panel-body">

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <g:form controller="user" action="login" method="POST">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-username" type="text" class="form-control" name="username" value=""
                                       placeholder="username or email">
                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="password"
                                       placeholder="password">
                            </div>


                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <input id="login-remember" type="checkbox" name="remember"
                                               value="1"> Remember me
                                    </label>
                                </div>
                            </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                <button id="btn-login" href="#" class="btn btn-lg btn-success" type="submit"><i
                                        class="fa fa-sign-in"></i> Login</button>


                                    <br/><br/>
                                <a class="btn btn-lg btn-primary" onclick="fbStormpathLogin()">
                                    <i class="fa fa-facebook-square"></i> Login with Facebook
                                </a>
                                <br/><br/>

                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%">
                                        Don't have an account!
                                        <a href="<g:createLink controller='user' action='signup'/>">
                                            Sign Up Here
                                        </a><br/><br/>
                                        <a href="#" onclick="showForgotPwDialog()">Forgot password?</a>
                                    </div>
                                </div>
                            </div>
                        </g:form>

                    </div>
                </div><!-- END Login box -->


            <!-- Forgot Password dialog -->
                <div class="panel panel-info hidden" id="resetPasswordPanel">
                    <div class="panel-heading">
                        <div class="panel-title">Reset password</div>

                        <div style="float:right; font-size: 80%; position: relative; top:-20px">
                            <button type="button" class="close" data-dismiss="modal"><span
                                    aria-hidden="true">&times;</span><span
                                    class="sr-only">Close</span></button>
                        </div>
                    </div>

                    <div style="padding-top:30px" class="panel-body">

                        <g:form controller="user" action="resetPassword" method="POST">

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input id="login-email" type="text" class="form-control" name="email" value=""
                                       placeholder="Account Email">
                            </div>


                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                <button id="btn-reset-pw" href="#" class="btn btn-lg btn-success" type="submit"><i
                                            class="fa fa-sign-in"></i> Reset Password</button>

                                </div>
                            </div>

                        </g:form>

                    </div>
                </div>    <!-- END Forgot Password dialog -->

            </div>


        </div>

    </div>
</div>