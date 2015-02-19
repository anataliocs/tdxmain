<meta name="layout" content="main"/>

<script type="text/javascript">
    $('#carousel-example-generic').carousel({
        interval: 2000
    });

</script>

<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<link rel="stylesheet" href="${resource(dir: 'css', file: 'calendar.css')}" type="text/css">


<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette">
        <div class="col-md-24 loggedInHeader">
            <div>
                <h2 class="featurette-heading">Donate to the <span
                        class="text-muted">Alumni Association</span></h2>
                <span>Contribute through PayPal</span><br/><br/><br/>

                <p class="lead">
                    Use the link below to make a donation to the Rho Triton Alumni Association
                </p>

                <p class="lead">
                    Donations will be used to fund re-colonization efforts and social functions.
                </p>

                <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                    <input type="hidden" name="cmd" value="_donations">
                    <input type="hidden" name="business" value="treasurer.ptaa@gmail.com">
                    <input type="hidden" name="lc" value="US">
                    <input type="hidden" name="item_name" value="Rho Triton Alumni Association">
                    <input type="hidden" name="no_note" value="0">
                    <input type="hidden" name="currency_code" value="USD">
                    <input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
                    <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0"
                           name="submit" alt="PayPal - The safer, easier way to pay online!">
                    <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1"
                         height="1">
                </form>

            </div>
        </div>

    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-6">

            <div class="container" ng-controller="calendarCtrl">

                <div class="text-center">
                    <button class="btn btn-primary" ng-click="fbGetEvents()">
                        <i class="fa fa-2x fa-refresh"></i>
                        <span>Refresh Events</span>
                    </button>
                    <br/>
                    <br/>

                </div>

                <div id="calendarLoadingDiv" class="row hide">
                    <div class="col-md-12 text-center">
                        <i class="fa fa-5x fa-spinner fa-spin"></i>
                        <br/>

                        <p class="lead">Loading Calendar Events...</p>
                    </div>
                </div>

                <div class="row">
                    <div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
                        <ul class="event-list">

                            <li ng-repeat="event in eventsFeed | orderBy : 'start_time' : true">
                                <time datetime="2014-07-20">
                                    <span class="day">{{ event.start_time | date : 'dd'}}</span>
                                    <span class="month">{{ event.start_time | date : 'MMM'}}</span>
                                    <span class="year">{{ event.start_time | date : 'yyyy'}}</span>

                                </time>

                                <div class="info">
                                    <h2 class="title">{{event.name}}</h2>


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
                                                class="fa fa-check"><span class="calendar-button-label">RSVP</span>
                                        </span></a></li>
                                        <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                                class="fa fa-google"></span></a></li>
                                    </ul>
                                </div>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>

        </div>


        <div class="col-md-6">

        </div>
    </div>

    <!-- /END THE FEATURETTES -->

</div><!-- /.container -->

