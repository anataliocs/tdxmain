<meta name="layout" content="main"/>

<script type="text/javascript">
    $('#carousel-example-generic').carousel({
        interval: 2000
    });

</script>



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
            <img src="${createLinkTo(dir: 'images', file: 'tdx-carousel1.jpg')}" alt="...">

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

    <div class="row titlebar">
        <div class="col-md-3"></div>

        <div class="col-md-6">
            <h1>Theta Delta Chi <span>Rho Triton Charge</span></h1>
        </div>
    </div>

    <div class="row titletext">
        <div class="col-md-3"></div>

        <div class="col-md-6">
            <h1>@VCU <span>Virginia Commonwealth University</span></h1>

        </div>
    </div>

    <div class="row title-school-logo">
        <div class="col-md-6"></div>

        <div class="col-md-6">
            <img src="${createLinkTo(dir: 'images', file: 'virginia-commonwealth-university-logo-small.png')}"
                 alt="vcu rams logo">

        </div>
    </div>

    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Philantrophy. <span
                    class="text-muted">Serving the Richmond community for over 30 years.</span></h2>

            <p class="lead">Ronald Mcdonald House, Relay for Life.  The Rho Triton Charge of Theta Delta Chi has actively participated in the local community since it's inception.</p>
        </div>

        <div class="col-md-5">
            <img class="featurette-image img-responsive img-thumbnail" alt="Theta Delta Chi Philantrophygroup picture"
                 src="${resource(dir: "images", file: "kegrun_mcsteps.jpg")}">
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5">
            <img class="featurette-image img-responsive img-thumbnail" alt="Theta Delta Chi brotherhood group picture"
                 src="${resource(dir: "images", file: "group-pic1.jpg")}">
        </div>

        <div class="col-md-7">
            <h2 class="featurette-heading">Brotherhood. <span class="text-muted">It's more then just parties.</span>
            </h2>

            <p class="lead">Form bonds that will last a lifetime.</p>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Your Future. <span class="text-muted">Open doors to success.</span></h2>

            <p class="lead">Leverage our professional network and begin the next chapter of your life.</p>
        </div>

        <div class="col-md-5">
            <img class="featurette-image img-responsive img-thumbnail" alt="Theta Delta Chi Career group picture"
                 src="${resource(dir: "images", file: "group-pic2.jpg")}">
        </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

</div><!-- /.container -->


