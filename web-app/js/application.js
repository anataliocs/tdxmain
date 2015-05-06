var app = angular.module('FacebookAPI', ['appControllers']);
var appControllers = angular.module('appControllers', []);

var facebookApiKey = $("#facebookApiKey").val();

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


appControllers.controller('timelineCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {


        $scope.FBUser = null;

        /*
         * Auth with FB and retrieve timeline data
         * */
        $scope.fbGetMessages = function () {
            $("#timelineLoadingDiv").removeClass("hide");

            if ($scope.FBUser == null) {
                FB.login(function (response) {
                    //console.log(response);
                    if (response.authResponse) {
                        //console.log('Logged in.');
                        $scope.FBAuthResponse = response.authResponse;

                        FB.api('43962888127?fields=feed', function (response) {

                            if (response && !response.error) {
                                $scope.msgFeed = response.feed.data;
                                $scope.$apply();
                            }
                            else {
                                console.log(response.error);
                            }

                            $("#timelineLoadingDiv").hide();
                            $("#timeline").removeClass("hide");
                        });

                    } else {
                        console.log('User cancelled login or did not fully authorize.');
                    }
                }, {
                    //scope: "public_profile,email"
                    scope: "public_profile,email,user_birthday,user_about_me,user_status,user_location,user_birthday"
                });
            } else {
                FB.logout();
                $scope.FBUser = null;
                $("#timelineLoadingDiv").hide();
            }
        };

    }
]);


appControllers.controller('calendarCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {



        $scope.FBUser = null;
        $scope.eventAttendees = null;

        /*
         * Auth with FB and retrieve data
         * */
        $scope.fbGetEvents = function () {

            $("#calendarLoadingDiv").removeClass("hide");

            if ($scope.FBUser == null) {
                FB.login(function (response) {
                    //console.log(response);
                    if (response.authResponse) {
                        //console.log('Logged in.');
                        $scope.FBAuthResponse = response.authResponse;

                        var fbEventsUrl = "43962888127/events";
                        var fbEventsFields = "?fields=venue,description,name,start_time,end_time,location,attending,picture"


                        FB.api(fbEventsUrl+fbEventsFields, function (response) {

                            if (response && !response.error) {
                                console.log("Events: ");
                                console.log(response.data);
                                $scope.eventsFeed = response.data;

                                if (response.data.attending) {
                                    $scope.eventAttendees = response.data.attending.data;

                                }

                                $scope.$apply();
                                $("#calendarLoadingDiv").hide();
                            }
                            else {
                                console.log(response.error);
                            }

                        });

                    } else {
                        console.log('User cancelled login or did not fully authorize.');
                    }
                }, {
                    //scope: "public_profile,email"
                    scope: "public_profile,email,user_birthday,user_about_me,user_status,user_location,user_birthday"
                });
            } else {
                FB.logout();
                $scope.FBUser = null;
                $("#calendarLoadingDiv").hide();
            }
        };


        $scope.openAttendeesModalDiv = function() {

            if ($scope.eventAttendees) {
                $("#attendeesModalDiv").html("123411 " + $scope.eventAttendees);
                $.each($scope.eventAttendees, function (index, value) {
                    $("#attendeesModalDiv").html("1234 " + value);
                });
            }

        };


    }
]);

appControllers.controller('loginCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {



    }
]);

appControllers.controller('SignupCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {


        $scope.FBUser = null;

        $scope.user = {};

        $scope.getMe = function () {
            FB.api('/me', function (response) {
                console.log(response);
                $scope.FBUser = response;
                var user = $scope.user;
                $("#firstname").val(response.first_name);
                $("#lastname").val(response.last_name);
                $("#email").val(response.email);
                $("#fbid").val(response.id);

                if (response.location != undefined) {
                    $("#location").val(response.location.name);
                }
                $("#dob").val(response.birthday);
                $("#facebookLink").val(response.link);
                var facebookImgUrl = "https://graph.facebook.com/" + response.id + "/picture?type=large";
                $("#facebookImgUrl").val(facebookImgUrl);

                $("#profileImg").attr("src", facebookImgUrl);
                $scope.$apply();
            });
        };

        $scope.getPermissions = function () {
            FB.api('/me/permissions', function (response) {
                console.log(response);
                $scope.fbpermissions = response;
                $scope.$apply();
            });
        };


        $scope.fblogin = function () {
            $("#registerButtonDiv").hide();
            $("#signupLoadingDiv").show();

            if ($scope.FBUser == null) {
                FB.login(function (response) {
                    console.log(response);
                    if (response.authResponse) {
                        console.log('Logged in.');
                        $scope.FBAuthResponse = response.authResponse;
                        console.log("test ");
                        console.log($scope.FBAuthResponse.accessToken);
                        $scope.getPermissions();
                        $scope.getMe();
                        $("#registerFormDiv").show();
                        $("#signupLoadingDiv").hide();
                    } else {
                        console.log('User cancelled login or did not fully authorize.');
                    }
                }, {
                    //scope: "public_profile,email"
                    scope: "public_profile,email,user_birthday,user_about_me,user_status,user_location,user_birthday"
                });
            } else {
                FB.logout();
                $scope.FBUser = null;
            }

            $("#password").val("");
        };
    }
]);


/*
 Login button JS
 */
function showForgotPwDialog() {
    $("#loginPanel").addClass("hidden");
    $("#resetPasswordPanel").removeClass("hidden");
}
function showLoginDialog() {
    $('#loginModal').modal('show');
    $("#loginPanel").removeClass("hidden");
    $("#resetPasswordPanel").addClass("hidden");
}


/*
 Add new donor JS
 */
function showAddDonorDisabledSubmit() {
    $("#addDonorFormSuccessMsg").addClass("hidden");
    $("#addDonorFormFailureMsg").addClass("hidden");

    $("#btnAddDonor").prop("disabled", "disabled");
    $("#btnAddDonorIcon").removeClass("fa fa-user-plus fa-2x").addClass("fa fa-spinner fa-spin fa-2x");
}

function clearAddDonorDisabledSubmit() {
    $("#btnAddDonor").removeAttr("disabled");
    $("#btnAddDonorIcon").removeClass("fa fa-circle-o-notch fa-spin fa-2x").addClass("fa fa-user-plus fa-2x");

    $("#addDonorFormSuccessMsg").removeClass("hidden").html("<i class='fa fa fa-check-circle fa-2x'></i> New Donor Added Successfully.");
}