<meta name="layout" content="main"/>

<!-- Custom Calendar CSS CSS -->
<link rel="stylesheet" href="${resource(dir: 'css', file: 'calendar.css')}" type="text/css">

<!-- Calendar
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">Social <span
                    class="text-muted"></span>Calendar</h2>

            <p class="lead">Keep up on events using Facebook or Google Calendar.</p>

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
                            <span class="day">7</span>
                            <span class="month">Nov</span>
                            <span class="year">2014</span>
                            <span class="time">ALL DAY</span>
                        </time>

                        <div class="info">
                            <h2 class="title">Happy hour and Pre-game</h2>

                            <p class="desc"><i class="fa fa-fw fa-clock-o"></i> 4:30PM - 7:00PM</p>

                            <p class="desc"><i class="fa fa-fw fa-map-marker"></i> Bigs BBQ 931 W Grace</p>
                            <ul>
                                <li style="width:50%;"><a href="#website" data-toggle="modal"
                                                          data-target="#calendarMapModal"><span
                                            class="fa fa-globe"></span> View Map</a></li>
                                <li style="width:50%;"><span class="fa fa-users" data-toggle="modal"
                                                             data-target="#attendeesModal"></span> Who's going?</li>
                            </ul>
                        </div>

                        <div class="social">
                            <ul>
                                <li class="facebook" style="width:33%;"><a href="#facebook"><span
                                        class="fa fa-check"> RSVP</span></a></li>
                                <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                        class="fa fa-google"></span></a></li>
                            </ul>
                        </div>
                    </li>

                    <li>
                        <time datetime="2014-07-20 0000">
                            <span class="day">7</span>
                            <span class="month">Nov</span>
                            <span class="year">2014</span>
                            <span class="time">12:00 AM</span>
                        </time>

                        <div class="info">
                            <h2 class="title">VCU Game</h2>

                            <p class="desc"><i class="fa fa-fw fa-clock-o"></i> 7:00PM - 9:00PM</p>

                            <p class="desc"><i class="fa fa-fw fa-map-marker"></i> Siegel Center</p>
                            <ul>
                                <li style="width:50%;"><a href="#website" data-toggle="modal"
                                                          data-target="#calendarMapModal"><span
                                            class="fa fa-globe"></span> View Map</a></li>
                                <li style="width:50%;"><span class="fa fa-users" data-toggle="modal"
                                                             data-target="#attendeesModal"></span> Who's going?</li>
                            </ul>
                        </div>

                        <div class="social">
                            <ul>
                                <li class="facebook" style="width:33%;"><a href="#facebook"><span
                                        class="fa fa-check"></span></a></li>
                                <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                        class="fa fa-google"></span></a></li>
                            </ul>
                        </div>
                    </li>

                    <li>
                        <time datetime="2014-07-20 2000">
                            <span class="day">8</span>
                            <span class="month">Nov</span>
                            <span class="year">2014</span>
                            <span class="time">8:00 PM</span>
                        </time>

                        <div class="info">
                            <h2 class="title">Charitos Society Reception</h2>

                            <p class="desc"><i class="fa fa-fw fa-clock-o"></i> 7:00PM - 10:00PM</p>

                            <p class="desc"><i class="fa fa-fw fa-map-marker"></i> Siegel Center</p>
                            <ul>
                                <li style="width:50%;"><a href="#website" data-toggle="modal"
                                                          data-target="#calendarMapModal"><span
                                            class="fa fa-globe"></span> View Map</a></li>
                                <li style="width:50%;"><a data-toggle="modal" data-target="#attendeesModal"><span
                                        class="fa fa-users"></span> Who's going?</a></li>
                            </ul>
                        </div>

                        <div class="social">
                            <ul>
                                <li class="facebook" style="width:33%;"><a href="#facebook"><span
                                        class="fa fa-check"></span></a></li>
                                <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                        class="fa fa-google-plus"></span></a></li>
                            </ul>
                        </div>
                    </li>

                    <li>
                        <time datetime="2014-07-31 1600">
                            <span class="day">9</span>
                            <span class="month">Nov</span>
                            <span class="year">2014</span>
                            <span class="time">4:00 PM</span>
                        </time>

                        <div class="info">
                            <h2 class="title">Brunch and Meeting</h2>

                            <p class="desc"><i class="fa fa-fw fa-clock-o"></i> 10:30AM - 12:30PM</p>

                            <p class="desc"><i
                                    class="fa fa-fw fa-map-marker"></i> Crown Plaza Hotel - 555 E Canal Street</p>
                            <ul>
                                <li style="width:50%;"><a href="#website" data-toggle="modal"
                                                          data-target="#calendarMapModal"><span
                                            class="fa fa-globe"></span> View Map</a></li>
                                <li style="width:50%;"><a data-toggle="modal" data-target="#attendeesModal"><span
                                        class="fa fa-users"></span> Who's going?</a></li>
                            </ul>
                        </div>

                        <div class="social">
                            <ul>
                                <li class="facebook" style="width:33%;"><a href="#facebook"><span
                                        class="fa fa-check"></span></a></li>
                                <li class="google-plus" style="width:33%;"><a href="#google-plus"><span
                                        class="fa fa-google-plus"></span></a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>



    <!-- /END THE CALENDAR -->

</div><!-- /.container -->

<!-- Map Modal -->
<g:render template="calendarMap" contextPath="/home/modals"/>

<!-- Attendees Modal -->
<g:render template="calendarAttendees" contextPath="/home/modals"/>