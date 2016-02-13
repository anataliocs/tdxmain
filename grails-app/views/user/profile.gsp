<meta name="layout" content="main"/>


<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">User <span
                    class="text-muted"></span>Profile</h2>

        </div>

    </div>


    <hr class="featurette-divider">

    <g:if test="${flash.error}">
        <div class="alert alert-danger"><i class="fa fa-exclamation-triangle fa-2x"></i> ${flash.error}</div>
    </g:if>
    <g:else>

        <div class="row text-center center-block">
            <div class="col-md-12">
                <div class="btn-group" role="group" aria-label="...">
                    <button type="button" class="btn btn-sm btn-primary"><i
                            class="fa fa-pencil-square-o"></i> Update Profile</button>
                    <button type="button" class="btn btn-sm btn-warning"><i class="fa fa-wrench"></i> Change Password
                    </button>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3">

                <div class="row featurette">
                    <div class="col-md-2"></div>

                    <div class="col-md-10 col-md-offset-2">
                        <h3><i class="fa fa-user"></i> <sec:loggedInUserInfo field='fullName'/></h3>
                        <hr/>
                        <img class="img-responsive img-thumbnail" alt=" Profile picture"
                             src="<sec:loggedInUserInfo field='customData.profile-img'/>"/>
                    </div>
                </div>
            </div>

            <div class="col-md-9">

                <div class="row">
                    <div class="col-md-2"></div>

                    <div class="col-md-10 col-md-offset-2">

                        <h3><i class="fa fa-list-ul"></i> Profile Info</h3>
                        <hr/>
                        <strong class="lead"><i class="fa fa-envelope-square fa-fw"></i> Email:
                        </strong> <sec:loggedInUserInfo field='email'/><br/>

                        <strong class="lead"><i class="fa fa-calendar fa-fw"></i> Date of Birth:
                        </strong> <sec:loggedInUserInfo field='customData.dob'/> <br/>
                        <strong class="lead"><i class="fa fa-map-marker fa-fw"></i> Location:
                        </strong> <sec:loggedInUserInfo field='customData.current-location'/><br/>

                        <strong class="lead"><i class="fa fa-users fa-fw"></i> Pledge Class:
                        </strong> <sec:loggedInUserInfo field='customData.delegation-semester'/> <sec:loggedInUserInfo
                            field='customData.delegation-year'/> <br/>

                    </div>
                </div>
            </div>

        </div>
    </g:else>

</div>

</div>

</div>