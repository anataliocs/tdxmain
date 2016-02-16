<meta name="layout" content="main"/>

<script type="text/javascript">
    $('#carousel-example-generic').carousel({
        interval: 2000
    });

</script>

<g:if test="${flash.errMsg}">
    <script type="application/javascript">
        showLoginDialog();
    </script>
</g:if>

<link rel="stylesheet" href="${resource(dir: 'css', file: 'event.css')}" type="text/css">
<style>
.fade-carousel .slides .slide-1 {
    background-image: url("http://res.cloudinary.com/huxxvk3tt/image/upload/v1445711695/TDX_banner-1_ze5aem.jpg");
}

.fade-carousel .slides .slide-2 {
    background-image: url("http://res.cloudinary.com/huxxvk3tt/image/upload/v1429791423/11071826_10206313577701898_2950828307262048955_n_b1dq6n.jpg");
}

.fade-carousel .slides .slide-3 {
    background-image: url("http://res.cloudinary.com/huxxvk3tt/image/upload/v1429061026/kegrun_mcsteps_he7skl.jpg");
}
</style>

<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <div class="row titlebar">
        <div class="col-md-2"></div>

        <div class="col-md-8 ">

            <h1>Theta Delta Chi </h1>
            <span>Theta Delta Chi</span>
            <h1 class="greekLetters">&#920;&#916;&#935;</h1>
        </div>
    </div>

    <div class="row titletext">
        <div class="col-md-3"></div>

        <div class="col-md-6">
            <h1>@VCU <span>Virginia Commonwealth University </span></h1>

        </div>
    </div>

    <div class="row title-school-logo center-block">
        <div class="col-md-4">&nbsp;</div>

        <div class="col-md-4">
            <img src="${createLinkTo(dir: 'images', file: 'virginia-commonwealth-university-logo-small.png')}"
                 alt="vcu rams logo" class="center-block">

        </div>

    <div class="col-md-4">&nbsp;</div>
    </div>

    <!-- START THE FEATURETTES -->

    <div class="row featurette">
        <div class="col-md-6">
            <h2 class="featurette-heading">Philanthropy<br/> <span
                    class="text-muted"><small>Serving the Richmond community for over 40 years.</small></span></h2>

            <p class="lead lightText">The Rho Triton Charge of Theta Delta Chi has actively
            participated in the local community since its inception. We have
            been involved in fundraising for numerous charities, to include,
            the Juvenile Diabetes Research Foundation, Ronald McDonald
            House, Relay for Life and most recently we are partnered with
            Still Easier than Chemo to raise funds for the Massey Cancer
            Center.</p>
        </div>

        <div class="col-md-6">

            <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
                <!-- Overlay -->
                <div class="overlay-light"></div>

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

                                <h2>Still Easier Than Chemo

                                </h2>
                                <h4>Put cancer on the run</h4>
                            </hgroup>
                        </div>
                    </div>

                    <div class="item slides">
                        <div class="slide-2"></div>

                        <div class="hero">
                            <hgroup>

                                <h2>Autism Speaks
                                </h2>
                                <h4>Awareness, advocacy & fundraising</h4>
                            </hgroup>
                        </div>
                    </div>

                    <div class="item slides">
                        <div class="slide-3"></div>

                        <div class="hero">
                            <hgroup>
                                <h2>Ronald McDonald House
                                </h2>
                                <h4>Helping families heal together</h4>
                            </hgroup>

                        </div>
                    </div>
                </div>
                </div>

        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">

        <div class="col-md-12 text-center">
            <h3>Join us in our current campaigns</h3><br/>


        </div>

    </div>
    <br/>
    <div class="row center-block">
        <div class="col-md-12 text-center">
            <p class="lead">

                <strong>STILL EASIER THAN CHEMO</strong><br/>
                We raised $3,125 for the VCU Massey Cancer Center in partnership with Still Easier than Chemo this year.

                <img class="img-thumbnail"
                     src="http://res.cloudinary.com/huxxvk3tt/image/upload/v1445711695/TDX_banner-1_ze5aem.jpg"/>

            </p>
        </div>
    </div>
    <div class="row center-block">
        <div class="col-md-4">&nbsp;</div>

        <div class="col-md-4">
            <g:link controller="philanthropy" action="event" class="btn btn-primary btn-lg btn-block" role="button">
                <i class="fa fa-play-circle-o fa-3x"></i>
                <br/>Learn more!
            </g:link>
        </div>

        <div class="col-md-4">&nbsp;</div>
    </div>

<hr class="featurette-divider">
<br/>
    <div class="row center-block">
        <div class="col-md-12 text-center">
            <p class="lead">

                <strong>Xi Marks the Spot</strong><br/>
                We raised $1,666 for Autism Speaks in partnership with Alpha Xi Delta this year.
            </p>
        </div>
    </div>
    <div class="row center-block">
        <div class="col-md-4">&nbsp;</div>

        <div class="col-md-4">
            <g:link controller="philanthropy" action="autismSpeaks" class="btn btn-primary btn-lg btn-block" role="button">
                <i class="fa fa-play-circle-o fa-3x"></i>
                <br/>Learn More
            </g:link>
        </div>

        <div class="col-md-4">&nbsp;</div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-5">
            <img class="featurette-image img-responsive img-thumbnail" alt="Theta Delta Chi brotherhood group picture"
                 src="${resource(dir: "images", file: "tdx-brotherhoood.jpg")}">
        </div>

        <div class="col-md-7">
            <h2 class="featurette-heading">Brotherhood<br/> <span
                    class="text-muted"><small>Connect with our accomplished and diverse members.</small></span>
            </h2>

            <p class="lead lightText">Form real bonds that will last a lifetime.</p>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
        <div class="col-md-7">
            <h2 class="featurette-heading">Your Future<br/> <span class="text-muted"><small>Develop marketable skills and connections.</small>
            </span></h2>

            <p class="lead lightText">Utilize our professional network spanning multiple generations and take charge of the next chapter of your life.</p>
        </div>

        <div class="col-md-5">
            <img class="featurette-image img-responsive img-thumbnail" alt="Theta Delta Chi Career group picture"
                 src="${resource(dir: "images", file: "group-pic2.jpg")}">
        </div>
    </div>

    <!-- /END THE FEATURETTES -->

</div><!-- /.container -->

