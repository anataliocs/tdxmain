<meta name="layout" content="main"/>


<style>
#content {
    padding-top: 20px;
}

.btn-fb {
}

.btn-fb img {
    height: 40px;
}
</style>


<div ng-app="FacebookAPI">
    <div class="container marketing" ng-controller="SignupCtrl">

        <div class="row featurette text-center">
            <div class="col-md-12">
                <h2 class="featurette-heading">Register for an<span
                        class="text-muted">Account</span></h2>

                <p class="lead">Quick 1-click Sign-up for an Account</p>
            </div>

        </div>


        <hr class="featurette-divider">

        <br/><br/>

        <div class="panel">
            <div class="panel-body">
                <div class="row" id="registerButtonDiv">

                    <div class="col-sm-12">
                        <div class="text-center">

                            <p class="lead">We require a Facebook Account so that we can verify that your affiliation with Theta Delta Chi.</p>

                            <p class="lead">We will not post on your wall or use your personal information for any commercial purposes.</p>
                            <br/>

                            <button class="btn btn-large btn-primary" ng-click="fblogin()">
                                <i class="fa fa-facebook-square fa-2x"></i> Register With Facebook
                            </button>
                            <br/>

                        </div>

                    </div>

                </div>

                <div class="row" id="registerFormDiv" style="display:none;">
                    <div class="col-sm-8">

                        <g:form name="myForm" url="[action: 'save', controller: 'user']" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">First Name</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.first_name" class="form-control" placeholder="First Name"
                                           name="firstname">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Last Name</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.last_name" class="form-control" placeholder="Last Name" name="lastname">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Email</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.email" class="form-control" placeholder="Email" name="email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Password</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.password" type="password" class="form-control"
                                           placeholder="Password" name="password" value="test111">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Birthday</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.birthday" class="form-control"
                                           placeholder="Birthday" name="dob">
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label">Current Location</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.location" class="form-control" placeholder="Current Location" name="location">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Facebook Page Link</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.facebook_link" class="form-control"
                                           placeholder="Facebook Page Link" name="facebookLink">
                                    <input value="{{getFBPictureUrl(FBUser.id)}}" type="hidden" name="facebookImgUrl"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-large btn-primary" ng-click="signup()">
                                        <i class="fa fa-sign-in fa-2x fa-fw"></i> Complete your Registration</button>
                                </div>
                            </div>
                        </g:form>
                    </div>

                    <div class="col-sm-4">
                        <img ng-src="{{getFBPictureUrl(FBUser.id)}}" ng-show="FBUser"
                             title="{{getFBPictureUrl(FBUser.id)}}" class="img-thumbnail">

                    </div>

                </div>
            </div>
        </div>

    </div>

</div>



