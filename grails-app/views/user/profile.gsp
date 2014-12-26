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
                    <h3>Your Profile Picture</h3>
                    <img class="img-responsive img-thumbnail" alt="Theta Delta Chi Philantrophygroup picture" height="200" width="200"
                         src="${resource(dir: "images", file: "kegrun_mcsteps.jpg")}">
                </div>

                <div class="col-md-9">
                    <h3>Your Info</h3>
                    <strong class="lead">Email: </strong> ${user.username}<br/>
                    <strong class="lead">Name: </strong> ${user.userInfo.firstName} ${user.userInfo.lastName}<br/>

                    <strong class="lead">Date of Birth: </strong> ${user.userInfo.dob} <br/>
                    <strong class="lead">Location: </strong> ${user.userInfo.location} <br/>
                </div>


            </div>

        </g:each>

</div>

</div>