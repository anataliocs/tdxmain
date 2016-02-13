<meta name="layout" content="main"/>

<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette text-center">
        <div class="col-md-24">
            <h2 class="featurette-heading">Time<span
                    class="text-muted">line</span></h2>
            <span>Theta Delta Chi Rho Triton</span><br/><br/>

            <p class="lead">Keep up on the conversation from Facebook and Listserve</p>

        </div>

    </div>

    <hr class="featurette-divider">

    <!-- START THE TIMELINE -->



    <div class="container" ng-controller="timelineCtrl">

        <div class="text-center">
            <button id="refreshTimelineButton" class="btn btn-primary" ng-click="fbGetMessages()">
                <i class="fa fa-2x fa-refresh"></i>
                <span>Refresh Messages</span>
            </button>
            <br/>
            <br/>

        </div>

        <div id="timelineLoadingDiv" class="row hide">
            <div class="col-md-12 text-center">
                <i class="fa fa-5x fa-spinner fa-spin"></i>
                <br/>

                <p class="lead">Loading Message Feed...</p>
            </div>
        </div>

        <div id="timeline" class="hide">

            <div class="row timeline-movement timeline-movement-top">



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


            <div class="row timeline-movement" ng-repeat="msg in msgFeed | orderBy : 'created_time' : true">

                <div class="timeline-badge">
                    <span class="timeline-balloon-date-day">{{msg.created_time | date : 'dd'}}</span><br/>
                    <span class="timeline-balloon-date-month">{{msg.created_time | date : 'MMM'}}</span>
                </div>


                <div class="col-sm-6  timeline-item">
                    <div class="row">
                        <div ng-class-odd="'col-sm-11'" ng-class-even="'col-sm-offset-12 col-sm-11'">
                            <div ng-class-odd="'timeline-panel credits'" ng-class-even="'timeline-panel debits'">
                                <ul class="timeline-panel-ul">
                                    <li><span class="importo">{{msg.from.name}}</span></li>
                                    <li><span class="causale">{{msg.message}}</span></li>
                                    <li><p><small class="text-muted"><i
                                            class="fa fa-clock-o"></i> {{msg.created_time | date : 'MM/dd/yyyy h:mma'}}
                                    </small></p></li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>

            </div>

        </div>
    </div>
</div>

