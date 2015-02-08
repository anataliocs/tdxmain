<!-- Modal -->

<div class="container modal fade" id="loginModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div id="loginbox" style="margin-top:50px;"
                 class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
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
                                <button class="btn btn-lg btn-primary" ng-click="fblogin()">
                                    <i class="fa fa-facebook-square"></i> Login with Facebook
                                </button>
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
                                        <a href="#">Forgot password?</a>
                                    </div>
                                </div>
                            </div>
                        </g:form>

                    </div>
                </div>
            </div>


        </div>

    </div>
</div>