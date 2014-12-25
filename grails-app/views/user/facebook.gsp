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
    <div id="content" class="container" ng-controller="SignupCtrl">

        <br/><br/>

        <div class="panel">
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-8">
                        <g:form name="myForm" url="[action: 'save', controller: 'user']">
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
                                           placeholder="Birthday">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Gender</label>

                                <div class="col-sm-10">
                                    <select ng-model="user.gender" class="form-control">
                                        <option value="">--</option>
                                        <option value="male">Male</option>
                                        <option value="female">Female</option>
                                        <option value="other">Other</option>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Website</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.website" class="form-control" placeholder="Website">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Hometown</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.hometown" class="form-control" placeholder="Hometown">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Current Location</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.location" class="form-control" placeholder="Current Location">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Short Bio</label>

                                <div class="col-sm-10">
                                    <textarea ng-model="user.bio" class="form-control"
                                              placeholder="Short Bio"></textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Facebook Page Link</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.facebook_link" class="form-control"
                                           placeholder="Facebook Page Link">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-primary" ng-click="signup()">Sign up</button>
                                </div>
                            </div>
                        </g:form>
                    </div>

                    <div class="col-sm-4">
                        <div class="text-center">
                            <button class="btn btn-fb btn-default" ng-click="fblogin()">
                                <i class="fa fa-facebook-square"></i>
                                <span ng-show="!FBUser">Log in</span>
                                <span ng-show="FBUser">Log out</span>
                            </button>
                            <br/>
                            <br/>
                            <img ng-src="{{getFBPictureUrl(FBUser.id)}}" ng-show="FBUser"
                                 title="{{getFBPictureUrl(FBUser.id)}}" class="img-thumbnail">
                        </div>
                        <br/>
                        <strong>New User</strong>
                        <br/>
                        <pre>{{user | json}}</pre>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" ng-show="FBUser">
            <hr/>

            <div class="col-sm-12">
                <h3>Facebook Response</h3>
                <pre>{{FBUser | json}}</pre>

                <h3>Facebook Permissions</h3>
                <pre>{{fbpermissions | json}}</pre>

                <h3>Facebook Auth</h3>
                <pre>{{FBAuthResponse | json}}</pre>

            </div>
        </div>

    </div>

</div>



