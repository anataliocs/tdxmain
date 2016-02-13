<meta name="layout" content="main"/>

<!-- Custom Calendar CSS CSS -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'calendar.css')}" type="text/css">

<!-- Calendar
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">Founders <span
                    class="text-muted">Day 2015</span></h2>
            <span>Theta Delta Chi Rho Triton</span><br/><br/>

            <p class="lead">Keep up on Founder's day events</p>

        </div>

    </div>

    <!-- START THE CALENDAR -->



    <hr class="featurette-divider">


    <div class="container">

        <div class="row">
            <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
                <ul class="event-list">

                    <li>
                        <time datetime="2014-07-20">
                            <span class="day">{{ event.start_time | date : 'dd'}}</span>
                            <span class="month">{{ event.start_time | date : 'MMM'}}</span>
                            <span class="year">{{ event.start_time | date : 'yyyy'}}</span>

                        </time>

                        <div class="info">
                            <h2 class="title">VCU Men's Basketball Exhibition vs. California (PA)</h2>

                            <p class="desc"><i class="fa fa-fw fa-clock-o"></i>
                                {{ event.start_time | date : 'h:mma'}}
                                <span ng-show="event.end_time">- {{ event.end_time | date : 'h:mma'}}</span>
                            </p>


                            <p class="desc"><i class="fa fa-fw fa-map-marker"></i>
                                <strong>{{event.location}}</strong><br/>
                                <span ng-show="{{event.venue}}">
                                    <span ng-show="{{event.venue.street}}">
                                        {{event.venue.street}}
                                    </span>

                                    <span ng-show="{{event.venue.city}}">
                                        {{event.venue.city}},
                                    </span>
                                    <span ng-show="{{event.venue.state}}">
                                        {{event.venue.state}}
                                    </span>
                                    <span ng-show="{{event.venue.zip}}">
                                        {{event.venue.zip}}
                                    </span>
                                </span>
                            </p>

                            <ul>
                                <li style="width:50%;"><a href="#website" data-toggle="modal"
                                                          data-target="#calendarMapModal"><span
                                            class="fa fa-globe"></span> View Map</a></li>
                                <li style="width:50%;"><a data-toggle="modal" data-target="#attendeesModal"
                                                          ng-click="openAttendeesModalDiv()"><span
                                            class="fa fa-users"></span> Who's going?</a></li>
                            </ul>
                        </div>

                        <div class="social">
                            <ul>
                                <li class="facebook" style="width:33%;"><a href="#facebook"><span
                                        class="fa fa-check"><span class="calendar-button-label">RSVP</span></span></a>
                                </li>
                                <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                        class="fa fa-google"></span></a></li>
                            </ul>
                        </div>
                    </li>

                </ul>
            </div>
        </div>
    </div>

    <!-- /END THE CALENDAR -->

</div><!-- /.container -->
