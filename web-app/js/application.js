if (typeof jQuery !== 'undefined') {
    (function ($) {
        $('#spinner').ajaxStart(function () {
            $(this).fadeIn();
        }).ajaxStop(function () {
            $(this).fadeOut();
        });
    })(jQuery);
}


var app = angular.module('FacebookAPI', ['appControllers']);
var appControllers = angular.module('appControllers', []);

appControllers.controller('FacebookCtrl', ['$scope', '$rootScope', '$http',
    function ($scope, $rootScope, $http) {

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

        $scope.signup = function () {
            alert("TODO: Do signup with user: " + JSON.stringify($scope.user));
        };

        /*
         * Auth with FB and retrieve data
         * */
        $scope.fblogin = function () {
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
