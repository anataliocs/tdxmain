if (typeof jQuery !== 'undefined') {
    (function($) {
        $('#spinner').ajaxStart(function() {
            $(this).fadeIn();
        }).ajaxStop(function() {
            $(this).fadeOut();
        });
    })(jQuery);
}


var app = angular.module('ExploringTheFacebookAPI', ['appControllers']);
var appControllers = angular.module('appControllers', []);

appControllers.controller('SignupCtrl', ['$scope', '$rootScope', '$http',
    function($scope, $rootScope, $http) {

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


        $scope.getFBPictureUrl = function(id){
            return "https://graph.facebook.com/" + id + "/picture?type=large";
        }

        /*
        * Get message feed from Group
        * */
        $scope.getGroupFeed = function() {
            FB.api('43962888127?fields=feed', function(response) {
                console.log(response);
            });
        };

        $scope.fblogin = function() {
            if ($scope.FBUser == null) {
                FB.login(function(response) {
                    console.log(response);
                    if (response.authResponse) {
                        console.log('Logged in.');
                        $scope.FBAuthResponse = response.authResponse;
                        $scope.getPermissions();
                        $scope.getMe();
                        $scope.getGroupFeed();
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
