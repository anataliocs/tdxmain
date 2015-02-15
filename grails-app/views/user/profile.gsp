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
        <div class="row featurette">
            <div class="col-md-3">

                <div class="row featurette">
                    <div class="col-md-2"></div>

                    <div class="col-md-10 col-md-offset-2">
                        <h3><i class="fa fa-user"></i> ${acct.fullName}</h3>
                        <hr/>
                        <img class="img-responsive img-thumbnail alt=" Profile picture"
                    src='${customData.get("profile-img")}'>
                    </div>
                </div>
            </div>

            <div class="col-md-9">
                <div class="row featurette">
                    <div class="col-md-2"></div>

                    <div class="col-md-10 col-md-offset-2">
                        <h3><i class="fa fa-list-ul"></i> Profile Info</h3>
                        <hr/>
                        <strong class="lead"><i class="fa fa-envelope-square fa-fw"></i> Email:
                        </strong> ${acct.email}<br/>

                        <strong class="lead"><i class="fa fa-calendar fa-fw"></i> Date of Birth:
                        </strong> ${customData.get("dob")}  <br/>
                        <strong class="lead"><i class="fa fa-map-marker fa-fw"></i> Location:
                        </strong> ${customData.get("current-location")} <br/>

                        <strong class="lead"><i class="fa fa-users fa-fw"></i> Delegation:
                        </strong> ${customData.get("delegation-semester")} ${customData.get("delegation-year")}<br/>

                    </div>
                </div>
            </div>

        </div>
    </g:else>

</div>

</div>

</div>