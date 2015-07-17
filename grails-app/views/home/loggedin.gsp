<%@ page import="sun.awt.geom.Curve; com.tdx.DonorLevelEnum" %>
<meta name="layout" content="main"/>

<script type="text/javascript">
    $('#carousel-example-generic').carousel({
        interval: 2000
    });


</script>

<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<!-- Custom Calendar CSS -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'calendar.css')}" type="text/css">

<div class="container marketing" ng-app="FacebookAPI">

    <div class="row col-md-12 center-block">

        <div class="carousel landing-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
            <div class="overlay"></div>
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
                <li data-target="#bs-carousel" data-slide-to="1"></li>
                <li data-target="#bs-carousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item slides active">
                    <div class="slide-1"></div>

                    <div class="hero">
                        <hgroup>
                            <h1>Become part of the founding Donors</h1>

                            <h3>Pledge and become part of the rebirth of Rho Triton</h3>
                        </hgroup>
                        <a class="btn btn-hero btn-lg" role="button" href="#" data-toggle="modal"
                           data-target="#donateModal"
                           target="_blank">Make Your Pledge</a>
                    </div>
                </div>

                <div class="item slides">
                    <div class="slide-2"></div>

                    <div class="hero">
                        <hgroup>
                            <h1>Help a Good Cause</h1>

                            <h3>Help us in our campaign Still Easier Than Chemo</h3>
                        </hgroup>

                        <g:link class="btn btn-hero btn-lg" role="button" href="#" controller="philanthropy"
                                action="event">Get Involved</g:link>
                    </div>
                </div>

                <div class="item slides">
                    <div class="slide-3"></div>

                    <div class="hero">
                        <hgroup>
                            <h1>Help Get Us Back On Campus</h1>

                            <h3>Donate to the Recolonization fund</h3>
                        </hgroup>
                        <a class="btn btn-hero btn-lg" role="button" href="#" data-toggle="modal"
                           data-target="#donateModal"
                           target="_blank">Support our Efforts</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <hr class="featurette-divider">

    <div class="row">
        <div class="col-md-12">
            <div class="well well-sm text-center">
                <i class="fa fa-exclamation-circle fa-2x"></i>

                <p class="lead"><strong>Announcement</strong></p>
                <br/>

                <g:if test="${announcement}">
                    <p class="lead">${announcement?.text}</p><hr/>

                    <p class="small">Posted: <g:formatDate format="MM-dd-yyyy" date="${announcement?.created}"/></p>
                </g:if>
                <g:else>
                    <p class="lead">No Announcements</p><hr/>
                </g:else>
            </div>

        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div role="tabpanel">

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist" id="sectionTabList">
                    <li role="presentation"><a href="#donate" aria-controls="donate" role="tab" id="donateTabLink"
                                               data-toggle="tab">Donate</a></li>
                    <li role="presentation"><a href="#calendar" aria-controls="calendar" role="tab"
                                               data-toggle="tab">Calendar</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab"
                                               data-toggle="tab">Messages</a></li>
                <li role="presentation"><a href="#contactInfo" aria-controls="contactInfo" role="tab"
                                           data-toggle="tab">Contact info</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active fade" id="donate">
                        <br/>

                        <div class="panel panel-default">
                            <div class="panel-body">

                                <div class="row">
                                    <div class="col-md-6">

                                        <div class="panel panel-default text-center">

                                            <g:if test="${donor}">
                                                <g:set var="amount"
                                                       value="${donor.donation.asList().sum { it.amount }}"></g:set>
                                                <g:set var="donorLevel"
                                                       value="${com.tdx.DonationController.getDonorLevel(amount)}"></g:set>
                                                <g:set var="nextDonorLevel"
                                                       value="${com.tdx.DonationController.getNextDonorLevel(amount)}"></g:set>
                                            </g:if>

                                            <div class="panel-body">
                                                <g:if test="${donor}">
                                                    <h3>Current Donation Level</h3>

                                                    <div class="well text-center">

                                                        <g:render template="/blocks/donationIcon"></g:render>

                                                        <br/>

                                                        <p class="lead"><i class="fa fa-usd"></i> ${amount}
                                                        </p>
                                                    </div>
                                                </g:if>
                                                <g:else>
                                                    <h3>Current Donation Level</h3>

                                                    <div class="alert alert-warning" role="alert">
                                                        <p class="lead"><i
                                                                class="fa fa-exclamation-triangle"></i> Donation level not currently linked
                                                    </div><br/>
                                                    Please use the <a
                                                        href="<g:createLink controller='contact' action='index'/>"><i
                                                            class="fa fa-paper-plane-o"></i> Contact us</a> form to contact
                                                            technical support.
                                                    </p>
                                                </g:else>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="col-md-6">

                                        <div class="panel panel-default text-center">
                                            <div class="panel-heading">
                                                <h3>Your Progress towards the next donation level</h3>
                                            </div>

                                            <div class="panel-body">
                                                <g:if test="${donor}">
                                                    <i class="fa fa-trophy fa-2x"></i> ${nextDonorLevel} - <i
                                                        class="fa fa-usd"></i> ${nextDonorLevel.threshold}

                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-striped active"
                                                             role="progressbar"
                                                             aria-valuenow="${amount}" aria-valuemin="0"
                                                             aria-valuemax="${nextDonorLevel.threshold}"
                                                             style="width: 50%">
                                                            $ ${amount} / $ ${nextDonorLevel.threshold}
                                                        </div>
                                                    </div>
                                                </g:if>
                                                <g:else>

                                                    <div class="alert alert-warning" role="alert">
                                                        <p class="lead"><i
                                                                class="fa fa-exclamation-triangle"></i> Donation level not currently linked
                                                    </div><br/>
                                                    Please use the <a
                                                        href="<g:createLink controller='contact' action='index'/>"><i
                                                            class="fa fa-paper-plane-o"></i> Contact us</a> form to contact
                                                            technical support.
                                                    </p>
                                                </g:else>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                                <hr class="featurette-divider">

                                <div class="row">
                                    <div class="col-md-12 loggedInHeader">
                                        <div>
                                            <h2 class="featurette-heading">Donate to the <span
                                                    class="text-muted">Alumni Association</span></h2>
                                            <span>Contribute through PayPal</span><br/><br/><br/>

                                            <p class="lead">
                                                Use the link below to make a donation to the Rho Triton Alumni Association
                                            </p>

                                            <p class="lead">
                                                Donations will be used to fund recolonization efforts and social functions.
                                            </p>

                                            <g:render template="/blocks/paypalButton"></g:render>

                                        </div>
                                    </div>

                                </div>

                            </div></div>

                    </div>

                    <div role="tabpanel" class="tab-pane fade" id="calendar">
                        <br/>

                        <div class="panel panel-default">
                            <div class="panel-body">

                                <div clas="row">
                                    <div class="col-md-12">

                                        <div ng-controller="calendarCtrl">

                                            <div class="text-center">

                                                <h3 class="featurette-heading">Social <span
                                                        class="text-muted">Calendar</span></h3><br/>

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
                                                <div class="col-md-12">
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
                                                                    <li style="width:50%;"><a
                                                                            href="https://www.facebook.com/events/{{event.id}}"
                                                                            target="_blank"><span
                                                                                class="fa fa-globe"></span> View Map</a>
                                                                    </li>
                                                                    <li style="width:50%;"><a
                                                                            href="https://www.facebook.com/events/{{event.id}}"
                                                                            target="_blank"><span
                                                                                class="fa fa-users"></span> Who's going?
                                                                    </a>
                                                                    </li>
                                                                </ul>
                                                            </div>

                                                            <div class="social">
                                                                <ul>
                                                                    <li class="facebook" style="width:33%;"><a
                                                                            href="https://www.facebook.com/events/{{event.id}}"
                                                                            target="_blank"><span
                                                                                class="fa fa-check"><span
                                                                                    class="calendar-button-label"></span>
                                                                        </span></a></li>

                                                                    <li class="google-plus hidden" style="width:33%;"><a
                                                                            href="#google-plus"><span
                                                                                class="fa fa-google"></span></a></li>
                                                                </ul>
                                                            </div>
                                                        </li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            </div>

                        </div></div>

                    <!-- Messages tab -->
                    <div role="tabpanel" class="tab-pane fade" id="messages">

                        <br/>

                        <div class="panel panel-default">
                            <div class="panel-body">

                                <div class="row">

                                    <div class="col-md-12">

                                        <div ng-controller="timelineCtrl">

                                            <div class="text-center">

                                                <h3 class="featurette-heading">The <span
                                                        class="text-muted">Conversation</span></h3><br/>

                                                <button id="refreshTimelineButton" class="btn btn-primary"
                                                        ng-click="fbGetMessages()">
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


                                                <div class="row timeline-movement"
                                                     ng-repeat="msg in msgFeed | orderBy : 'created_time' : true">

                                                    <div class="timeline-badge">
                                                        <span class="timeline-balloon-date-day">{{msg.created_time | date : 'dd'}}</span><br/>
                                                        <span class="timeline-balloon-date-month">{{msg.created_time | date : 'MMM'}}</span>
                                                    </div>


                                                    <div class="col-sm-6  timeline-item">
                                                        <div class="row">
                                                            <div ng-class-odd="'col-sm-11'"
                                                                 ng-class-even="'col-sm-offset-12 col-sm-11'">
                                                                <div ng-class-odd="'timeline-panel credits'"
                                                                     ng-class-even="'timeline-panel debits'">
                                                                    <ul class="timeline-panel-ul">
                                                                        <li><span
                                                                                class="importo">{{msg.from.name}}</span>
                                                                        </li>
                                                                        <li><span class="causale">{{msg.message}}</span>
                                                                        </li>
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
                                </div>

                            </div>
                        </div>

                    </div><!-- END Messages tab -->

                <!-- Contact Info tab -->
                <div role="tabpanel" class="tab-pane fade" id="contactInfo">

                    <br/>

                    <div class="panel panel-default">
                        <div class="panel-body">

                            <h3 class="featurette-heading">Brotherhood <span
                                    class="text-muted">Contact Info</span></h3><br/>

                            <iframe class="tdxdoc"
                                    src="https://docs.google.com/spreadsheets/d/19tlLkkp8cTtkCQkc81m3kjVcUkY7g4urAIsJmZOfx0M/pubhtml?gid=481304098&amp;single=true&amp;widget=true&amp;headers=false"></iframe>
                        </div>
                        </div>

                </div><!-- END Contact Info tab -->

                </div>

            </div>
        </div>
    </div>



    <!-- /END THE FEATURETTES -->
</div>
</div><!-- /.container -->

<script type="text/javascript">
    $(function () {
        $("#sectionTabList a:first").tab('show'); // Select first tab
    });
</script>