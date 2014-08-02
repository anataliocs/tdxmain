<meta name="layout" content="main" />

<script type="text/javascript">
    $('#carousel-example-generic').carousel({
        interval: 2000
    });

</script>

<!-- NAVBAR
================================================== -->
<div class="navbar-wrapper">
    <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Theta Delta Chi Rho Triton</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="">Rush</a></li>
                        <li><a href="">Contact</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Brothers <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something else here</a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Nav header</li>
                                <li><a href="#">Separated link</a></li>
                                <li><a href="#">One more separated link</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>


<!-- Carousel
    ================================================== -->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="${createLinkTo(dir: 'images', file: 'tdx-carousel1-small.jpg')}" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>
        <div class="item">
            <img src="${createLinkTo(dir: 'images', file: 'tdx-carousel2.jpg')}" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>

        ...
    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>

<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

<!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Philantrophy. <span class="text-muted">Serving the Richmond community for over 30 years.</span></h2>
            <p class="lead">Ronald Mcdonald House, Relay for Life.  The Rho Triton Charge of Theta Delta Chi has actively participated in the local community since it's inception. </p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-responsive" alt="500x500" src="${resource(dir:"images",file:"kegrun_mcsteps.jpg")}">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5">
            <img class="featurette-image img-responsive" alt="500x500" src="${resource(dir:"images",file:"group-pic1.jpg")}">
        </div>
        <div class="col-md-7">
            <h2 class="featurette-heading">Brotherhood. <span class="text-muted">It's more then just parties.</span></h2>
            <p class="lead">A bond you form for life.</p>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Your Career. <span class="text-muted">Personal and Professional Development.</span></h2>
            <p class="lead">Leverage our professional network.</p>
        </div>
        <div class="col-md-5">
            <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="500x500" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI1MDAiIGhlaWdodD0iNTAwIj48cmVjdCB3aWR0aD0iNTAwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iI2VlZSIvPjx0ZXh0IHRleHQtYW5jaG9yPSJtaWRkbGUiIHg9IjI1MCIgeT0iMjUwIiBzdHlsZT0iZmlsbDojYWFhO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1zaXplOjMxcHg7Zm9udC1mYW1pbHk6QXJpYWwsSGVsdmV0aWNhLHNhbnMtc2VyaWY7ZG9taW5hbnQtYmFzZWxpbmU6Y2VudHJhbCI+NTAweDUwMDwvdGV4dD48L3N2Zz4=">
        </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->


    <!-- FOOTER -->
    <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>© 2014 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>

</div><!-- /.container -->


