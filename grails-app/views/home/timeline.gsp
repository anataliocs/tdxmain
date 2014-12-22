<meta name="layout" content="main"/>

<div class="row featurette text-center">
    <div class="col-md-24">
        <h2 class="featurette-heading">Time <span
                class="text-muted"></span>line</h2>

        <p class="lead">Keep up on the conversation from Facebook and Listserve.</p>

    </div>

</div>

<hr class="featurette-divider">

<!-- START THE TIMELINE -->



<div ng-app="FacebookAPI" class="container">

    <div id="timeline" ng-controller="timelineCtrl">

        <div class="row timeline-movement timeline-movement-top">

            <div class="text-center">
                <button class="btn btn-fb btn-default" ng-click="fblogin()">
                    <i class="fa fa-facebook-square"></i>
                    <span ng-show="!FBUser">Log in</span>
                    <span ng-show="FBUser">Log out</span>
                </button>
                <br/>
                <br/>

            </div>

        <div class="timeline-badge timeline-future-movement">
            <a href="#">
                <span class="glyphicon glyphicon-plus"></span>
            </a>
        </div>
        <div class="timeline-badge timeline-filter-movement">
            <a href="#">
                <span class="glyphicon glyphicon-time"></span>
            </a>
        </div>

    </div>


        <div class="row timeline-movement" ng-repeat="msg in msgFeed">

            <div class="timeline-badge">
                <span class="timeline-balloon-date-day">18</span>
                <span class="timeline-balloon-date-month">APR</span>
            </div>



            <div class="col-sm-6  timeline-item" >
                <div class="row">
                    <div class="col-sm-11">
                        <div class="timeline-panel credits">
                            <ul class="timeline-panel-ul">
                                <li><span class="importo">{{msg.from.name}}</span></li>
                                <li><span class="causale">{{msg.message}} </span> </li>
                                <li><p><small class="text-muted"><i class="glyphicon glyphicon-time"></i>{{msg.created_time}}</small></p> </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>


            <div class="col-sm-6  timeline-item">
                <div class="row">
                    <div class="col-sm-offset-1 col-sm-11">
                        <div class="timeline-panel debits">
                            <ul class="timeline-panel-ul">
                                <li><span class="importo">Mussum ipsum cacilds</span></li>
                                <li><span class="causale">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </span> </li>
                                <li><p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 11/09/2014</small></p> </li>
                            </ul>
                        </div>

                    </div>
                </div>
            </div>
        </div>




    </div>
</div>


