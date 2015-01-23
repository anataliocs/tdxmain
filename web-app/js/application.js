var app = angular.module('FacebookAPI', ['appControllers']);
var appControllers = angular.module('appControllers', []);

var facebookApiKey = $("#facebookApiKey").val();

appControllers.controller('timelineCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {

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

        $scope.FBUser = null;

        $scope.signup = function () {
            alert("TODO: Do signup with user: " + JSON.stringify($scope.user));
        };

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



appControllers.controller('SignupCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {

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

        $scope.FBUser = null;

        $scope.user = {};

        $scope.getMe = function () {
            FB.api('/me', function (response) {
                console.log(response);
                $scope.FBUser = response;
                var user = $scope.user;
                user.first_name = response.first_name;
                user.last_name = response.last_name;
                user.email = response.email;

                if (response.location != undefined) {
                    user.location = response.location.name;
                }
                user.birthday = response.birthday;
                user.facebook_link = response.link;
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


        $scope.getFBPictureUrl = function (id) {
            return "https://graph.facebook.com/" + id + "/picture?type=large";
        }

        $scope.fblogin = function () {
            $("#registerButtonDiv").hide();
            $("#signupLoadingDiv").show();
            if ($scope.FBUser == null) {
                FB.login(function (response) {
                    console.log(response);
                    if (response.authResponse) {
                        console.log('Logged in.');
                        $scope.FBAuthResponse = response.authResponse;
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
        };
    }
]);

