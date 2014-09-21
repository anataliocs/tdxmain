<!-- Modal -->

<div class="container modal fade" id="rushSignupModal">
    <div class="modal-dialog">
        <div class="modal-content">

            <div id="loginbox" style="margin-top:50px;"
                 class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Sign Up to Rush</div>

                        <div style="float:right; font-size: 80%; position: relative; top:-20px">
                            <button type="button" class="close" data-dismiss="modal"><span
                                    aria-hidden="true">&times;</span><span
                                    class="sr-only">Close</span></button>
                        </div>
                    </div>

                    <div style="padding-top:30px" class="panel-body">

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <form id="rushSignUpform" class="form-horizontal" role="form">

                            Sign-up to rush by logging in with your Facebook.

                            <div style="margin-top:10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <br/><br/>
                                    <sec:ifNotGranted roles="ROLE_USER">
                                        <facebookAuth:connect/>
                                    </sec:ifNotGranted>
                                    <sec:ifAllGranted roles="ROLE_USER">
                                        Welcome <sec:username/>! (<g:link
                                            uri="/j_spring_security_logout">Logout</g:link>)
                                    </sec:ifAllGranted>

                                </div>
                            </div>

                        </form>

                    </div>
                </div>
            </div>


        </div>

    </div>
</div>