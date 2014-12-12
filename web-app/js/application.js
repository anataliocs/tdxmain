if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}


var app = angular.module('FacebookAPI', ['appControllers']);
var appControllers = angular.module('appControllers', []);

appControllers.controller('FacebookCtrl', ['$scope', '$rootScope', '$http',
    function($scope, $rootScope, $http) {

        window.fbAsyncInit = function () {
            FB.init({
                appId: '103851025259',
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

        $scope.signup = function() {
            alert("TODO: Do signup with user: " + JSON.stringify($scope.user));
        };

        $scope.user = {};
        // $scope.user.first_name=null;
        // $scope.user.last_name=null;
        // $scope.user.email=null;
        // $scope.user.bio=null;
        // $scope.user.hometown=null;
        // $scope.user.location=null;
        // $scope.user.gender=null;
        // $scope.user.birthday=null;
        // $scope.user.website=null;
        // $scope.user.facebook_link=null;

        /*
         * Get user profile info
         * */
        $scope.getMe = function() {
            FB.api('/me', function(response) {
                console.log(response);
                $scope.FBUser = response;
                var user = $scope.user;
                user.first_name = response.first_name;
                user.last_name = response.last_name;
                user.email = response.email;
                user.bio = response.bio;
                if (response.hometown != undefined) {
                    user.hometown = response.hometown.name;
                }
                if (response.location != undefined) {
                    user.location = response.location.name;
                }
                user.gender = response.gender;
                user.birthday = response.birthday;
                user.website = response.website;
                user.facebook_link = response.link;
                $scope.$apply();
            });
        };

        $scope.getPermissions = function() {
            FB.api('/me/permissions', function(response) {
                console.log(response);
                $scope.fbpermissions = response;
                $scope.$apply();
            });
        };

        /*
         * Get profile picture from Facebook
         * */
        $scope.getFBPictureUrl = function(id){
            return "https://graph.facebook.com/" + id + "/picture?type=large";
        }

        /*
        * Get message feed from Group
        * */
        $scope.getGroupFeed = function() {
            FB.api('43962888127?fields=feed', function(response) {

                $scope.msgFeed = response.feed.data;

                $.each( $scope.msgFeed, function( i, val ) {

                    console.log("msg " + val.message);
                });


            });
        };

        /*
         * Auth with FB and retrieve data
         * */
        $scope.fblogin = function() {
            if ($scope.FBUser == null) {
                FB.login(function(response) {
                    console.log(response);
                    if (response.authResponse) {
                        console.log('Logged in.');
                        $scope.FBAuthResponse = response.authResponse;
                        $scope.getPermissions();
                        $scope.getMe();
                        //$scope.getGroupFeed();

                        FB.api('43962888127?fields=feed', function(response) {

                            $scope.msgFeed = response.feed.data;

                            console.log($scope.msgFeed );
                        });

                    } else {
                        console.log('User cancelled login or did not fully authorize.');
                    }
                }, {
                    //scope: "public_profile,email"
                    scope: "public_profile,email,user_birthday,user_about_me,user_status,user_location,user_hometown,user_birthday,user_website"
                });
            } else {
                FB.logout();
                $scope.FBUser = null;
            }
        };
    }
]);
