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
                    <a class="navbar-brand" href="#">
                        <img src="${createLinkTo(dir: 'images', file: 'tdx-logo.png')}"
                             alt="theta delta chi rho Triton crest"></a>
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">

                        <li class="${homeSelected}">
                            <a href="<g:createLink controller='home' action='index'/>"><i class="fa fa-home"></i> Home</a>
                        </li>
                        <li class="${calendarSelected}">
                            <a href="<g:createLink controller='home' action='calendar'/>"><i class="fa fa-calendar-o"></i> Calendar</a>
                        </li>

                        <li class="${philanthropySelected}">
                            <a href="<g:createLink controller='philanthropy' action='index'/>">
                            <i class="fa fa-heart-o"></i> Philantrophy</a>
                        </li>

                        <li class="${contactSelected}"><a
                                href="<g:createLink controller='contact' action='index'/>"><i class="fa fa-paper-plane-o"></i> Contact</a></li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-users"></i> Brothers <span
                                    class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#" data-toggle="modal" data-target="#loginModal">Login/Register</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>

<!-- Login Modal -->
<g:render template="login" contextPath="/layouts/modals"/>

<!-- Contact Modal -->
<g:render template="rushSignup" contextPath="/layouts/modals"/>

