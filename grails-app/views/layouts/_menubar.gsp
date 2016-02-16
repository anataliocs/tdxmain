<!-- NAVBAR
================================================== -->
<div class="navbar-wrapper">
    <div class="container">

        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<g:createLink controller='home' action='index'/>">
                        <img src="${createLinkTo(dir: 'images', file: 'theta-delta-chi-logo-gold.png')}"
                             alt="theta delta chi rho Triton crest" class="nav-brand-image">

                        <!-- Shorter label for mobile -->
                        <span class="hidden-md hidden-lg">
                            TDX PT Alumni Assn.
                        </span>

                        <!-- Full size label -->
                        <span class="hidden-xs hidden-sm">
                            Theta Delta Chi
                        </span>
                    </a>

                </div>

                <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">

                    <li class="${homeSelected}">
                        <a href="<g:createLink controller='home' action='index'/>"><i class="fa fa-home"></i> Home</a>
                    </li>
                    <sec:ifAllGranted roles="ROLE_USER">
                        <g:if test="${grailsApplication.config.grails.tdx.showprivatedata}">
                            <li class="${calendarSelected} hidden">
                                <a href="<g:createLink controller='home' action='calendar'/>"><i
                                        class="fa fa-calendar-o"></i> Calendar</a>
                            </li>
                        </g:if>
                    </sec:ifAllGranted>
                    <li class="${philanthropySelected}">
                        <a href="<g:createLink controller='philanthropy' action='event'/>">
                            <i class="fa fa-child"></i> Philantrophy</a>
                    </li>


                    <li class="${contactSelected}"><a
                            href="<g:createLink controller='contact' action='index'/>"><i
                                class="fa fa-paper-plane-o"></i> Contact</a></li>


                    <sec:ifNotLoggedIn>
                        <g:if test="${grailsApplication.config.grails.tdx.showprivatedata}">
                            <li class="dropdown dropdown-menu-left">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                        class="fa fa-sign-in"></i> Sign-in <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#" onclick="showLoginDialog()"><i
                                            class="fa fa-sign-in fa-fw"></i> Login</a></li>

                                    <li><a href="<g:createLink controller='user' action='signup'/>"><i
                                            class="fa fa-user fa-fw"></i> Register</a></li>

                                </ul>
                            </li>
                            </ul>
                        </g:if>
                    </sec:ifNotLoggedIn>

                    <sec:ifAllGranted roles="ROLE_USER">
                        <g:if test="${grailsApplication.config.grails.tdx.showprivatedata}">
                            <li class="dropdown dropdown-menu-left">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img class="img-circle" height="35" width="35"
                                         src="<sec:loggedInUserInfo field='customData.profile-img'/>"/> <span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">

                                    <li><a href="<g:createLink controller='user' action='profile'/>"><i
                                            class="fa fa-list-ul fa-fw"></i> View Profile</a></li>

                                    <li><a class="hidden" href="<g:createLink controller='home' action='donate'/>"><i
                                            class="fa fa-money fa-fw"></i> Donate</a></li>

                                    <li><a class="hidden" href="<g:createLink controller='home' action='timeline'/>"><i
                                            class="fa fa-envelope-square fa-fw"></i> Message Feed</a></li>

                                    <li class="divider"></li>
                                    <li><g:link controller="logout"><i
                                            class="fa fa-sign-out"></i> Logout</g:link></li>
                                </ul>
                            </li>
                        </g:if>
                    </sec:ifAllGranted>
                </ul>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Login Modal -->
<g:render template="login" contextPath="/layouts/modals"/>

<!-- Donate Modal -->
<g:render template="donate" contextPath="/layouts/modals"/>