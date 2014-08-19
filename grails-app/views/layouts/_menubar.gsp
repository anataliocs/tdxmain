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
                        <li class="${homeSelected}"><a href="<g:createLink controller='home' action='index'/>">Home</a>
                        </li>
                        <li class="${rushSelected}"><a href="<g:createLink controller='rush' action='index'/>">Rush</a>
                        </li>
                        <li class="${philanthropySelected}"><a
                                href="<g:createLink controller='philanthropy' action='index'/>">Philantrophy</a></li>
                        <li class="${contactSelected}"><a
                                href="<g:createLink controller='contact' action='index'/>">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Brothers <span
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
<g:render template="contact" contextPath="/layouts/modals"/>

