<meta name="layout" content="main"/>

<%@ page import="com.tdx.User" %>
<%@ page import="com.tdx.UserInfo" %>

<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">User <span
                    class="text-muted"></span>Profile</h2>

        </div>

    </div>


        <hr class="featurette-divider">

        <g:each var="user" in="${users}" >


            <div class="row featurette">
                <div class="col-md-3">

                    <div class="row featurette">
                        <div class="col-md-2"></div>
                        <div class="col-md-10 col-md-offset-2">
                            <h3><i class="fa fa-user"></i> Your Profile Picture</h3>
                            <hr/>
                            <img class="img-responsive img-circle" alt="Profile picture"
                                 src="${user.userInfo.facebookImgUrl}">
                         </div>
                    </div>
                </div>

                <div class="col-md-9">
                    <div class="row featurette">
                        <div class="col-md-2"></div>
                        <div class="col-md-10 col-md-offset-2">
                    <h3><i class="fa fa-list-ul"></i> Your Info</h3>
                            <hr/>
                    <strong class="lead">Email: </strong> ${user.username}<br/>
                    <strong class="lead">Name: </strong> ${user.userInfo.firstName} ${user.userInfo.lastName}<br/>

                    <strong class="lead">Date of Birth: </strong> ${user.userInfo.dob} <br/>
                    <strong class="lead">Location: </strong> ${user.userInfo.location} <br/>

                    </div>
                    </div>
                    </div>

                </div>


            </div>

        </g:each>

</div>

</div>