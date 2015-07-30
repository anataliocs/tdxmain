<meta name="layout" content="main"/>

<g:javascript library="pwStrength"/>

<br/>
<div ng-app="FacebookAPI">
    <div class="container marketing" ng-controller="SignupCtrl">

        <br/>
        <div class="row featurette text-center">
            <div class="col-md-12">
                <br/>
                <h2 class="featurette-heading">Register for an <span
                        class="text-muted">Account</span></h2>

                <p class="lead">Sign-up for Access to Additional Features</p>
            </div>

        </div>


        <hr class="featurette-divider">

        <br/><br/>

        <div class="panel">
            <div class="panel-body">
                <g:if test="${flash.errMsg}">
                    <div class="row hidden" id="registerButtonDiv">
                </g:if>
                <g:else>
                    <div class="row" id="registerButtonDiv">
                </g:else>
                    <div class="col-sm-12">
                        <div class="text-center">

                            <p class="lead">We require a Facebook Account so that we can verify that your affiliation with Theta Delta Chi.</p>

                            <p class="lead">We will not post on your wall or use your personal information for any commercial purposes.</p>

                            <!-- Shorter label for mobile -->
                            <p class="small hidden-md hidden-lg">
                                <strong>Mobile Users:</strong>  A new browser tab will open for you to approve retrieval of info from Facebook to expedite the registration process.
                            You will have to close this window and return to this one to complete the registration process.
                            </p>
                            <br/>

                            <button class="btn btn-lg btn-primary" ng-click="fblogin()">
                                <i class="fa fa-facebook-square fa-2x"></i> Register With Facebook
                            </button>
                            <br/>

                        </div>

                    </div>



                <div class="col-sm-12">
                    <br/><hr/><br/>
                    <div class="text-center">

                        <p>Alternatively, you can contact technical support to manually have your account created.</p>

                        <p>This potentially can take a extended amount of time.</p>
                        <br/>

                        <p class="lead"><g:link controller="contact"
                                                action="index">Contact Technical Support</g:link></p>

                    </div>

                </div>

            </div>

                <div id="signupLoadingDiv" class="row" style="display:none;">
                    <div class="col-md-12 text-center">
                        <i class="fa fa-5x fa-spinner fa-spin"></i>
                        <br/>

                        <p class="lead">Loading Profile...</p>
                    </div>
                </div>
                <g:if test="${flash.errMsg}">
                    <div class="row" id="registerFormDiv">
                </g:if>
                <g:else>
                    <div class="row" id="registerFormDiv" style="display:none;">
                </g:else>
                    <div class="col-sm-8">
                        <g:if test="${flash.errMsg}">
                            <div id="signUpFormFailureMsg" class="alert alert-danger"><i
                                    class='fa fa-exclamation-triangle fa-2x'></i> ${flash.errMsg}</div>
                        </g:if>

                        <g:form name="signUpForm" url="[action: 'save', controller: 'user']" class="form-horizontal"
                                update="signUpFormFailureMsg" id="signUpForm">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">First Name</label>

                                <div class="col-sm-10">
                                    <input class="form-control" placeholder="First Name"
                                           value="${params.firstname ? params.firstname : ''}"
                                           name="firstname" id="firstname">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Last Name</label>

                                <div class="col-sm-10">
                                    <input class="form-control" placeholder="Last Name"
                                           value="${params.lastname ? params.lastname : ''}"
                                           name="lastname" id="lastname">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Email</label>

                                <div class="col-sm-10">
                                    <input ng-model="user.email" class="form-control" placeholder="Email"
                                           value="${params.email ? params.email : ''}"
                                           name="email" id="email">
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Password</label>

                                <div class="col-sm-10">
                                    <input type="password" class="form-control"
                                           placeholder="" id="password" name="password" value=""><br/>

                                    <div id="messages" class="hidden"></div>
                                </div>
                            </div><br/>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Confirm Password</label>

                                <div class="col-sm-10">
                                    <input type="password" class="form-control"
                                           placeholder="" id="passwordVerify" name="passwordVerify" value=""><br/>
                                </div>
                            </div><br/>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Birthday</label>

                                <div class="col-sm-10">
                                    <input class="form-control" value="${params.dob ? params.dob : ''}"
                                           placeholder="Date of Birth" name="dob" id="dob">
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label">Current Location</label>

                                <div class="col-sm-10">
                                    <input class="form-control" placeholder="Current Location"
                                           value=""
                                           name="location" id="location">
                            </div>

                                <br/><br/>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Pledging Semester</label>

                                    <div class="col-sm-10">
                                        <select class="form-control" id="pledgesem" name="pledgesem">
                                            <option>Fall</option>
                                            <option>Spring</option>
                                        </select>
                                    </div>
                                </div>

                                <br/>

                                <div class="form-group">
                                    <g:set var="today" value="${new Date()}"/>
                                    <label class="col-sm-2 control-label">Pledging Year</label>

                                    <div class="col-sm-10">
                                        <g:select class="form-control" id="pledgeyear" name="pledgeyear"
                                                  from="${1970..today[Calendar.YEAR]}" value="${today[Calendar.YEAR]}"/>

                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label">Facebook Page Link</label>

                                <div class="col-sm-10">
                                    <input class="form-control"
                                           value="${params.facebookLink ? params.facebookLink : ''}"
                                           placeholder="Facebook Page Link" name="facebookLink" id="facebookLink">
                                    <input type="hidden" value="${params.facebookImgUrl ? params.facebookImgUrl : ''}"
                                           name="facebookImgUrl" id="facebookImgUrl"/>
                                    <input value="{{FBAuthResponse.accessToken}}" type="hidden"
                                           name="facebookAuthToken"/>
                                    <input type="hidden" name="fbid" id="fbid"
                                           value="${params.fbid ? params.fbid : ''}"/>

                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <div class="g-recaptcha"
                                         data-sitekey="6Lc6fAITAAAAADG8Z5ss9Mg0bt_X1DMay24dzh8A"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                    <button type="submit" class="btn btn-lg btn-primary" ng-click="signup()">
                                        <i class="fa fa-sign-in fa-2x"></i> Complete your Registration</button>
                                </div>
                            </div>
                        </g:form>
                    </div>

                    <div class="col-sm-4">
                        <div class="panel panel-primary">
                            <div class="panel-heading">Your Profile Picture</div>

                            <div class="panel-body">
                                <img src="${params.facebookImgUrl ? params.facebookImgUrl : ''}"
                                     title="" class="img-thumbnail center-block" id="profileImg">
                            </div>

                            <div class="panel-footer">This image was retrieved from your Facebook Profile.</div>
                        </div>

                        <br/>

                        <div class="panel panel-primary">
                            <div class="panel-heading">Password Requirements</div>

                            <div class="panel-body">
                                <p class="lead">
                                <ul>
                                    <li>Minimum length: 8</li>
                                    <li>1 lowercase character required</li>
                                    <li>1 uppercase character required</li>
                                    <li>1 numeric character required</li>
                                </ul>
                            </p>
                            </div>

                            <div class="panel-footer">For your security.</div>
                        </div>

                    </div>

                </div>
            </div>
        </div>

    </div>

</div>

    </div></div>