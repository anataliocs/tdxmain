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

<!-- Marketing messaging and featurettes
    ================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <div class="row titlebar">
        <div class="col-md-2"></div>

        <div class="col-md-8 ">

            <h1>Theta Delta Chi </h1>
            <span>Rho Triton Alumni Association</span>
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

        <div class="col-md-4"">
            <img src="${createLinkTo(dir: 'images', file: 'virginia-commonwealth-university-logo-small.png')}"
                 alt="vcu rams logo" class="center-block">

        </div>

    <div class="col-md-4">&nbsp;</div>
    </div>

    <!-- START THE FEATURETTES -->

    <div class="row featurette">
        <div class="col-md-7">
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

        <div class="col-md-5">
            <div class="carousel slide article-slide" id="article-photo-carousel">

                <!-- Wrapper for slides -->
                <div class="carousel-inner cont-slider">

                    <div class="item active">
                        <img alt="" title="" class="img-responsive img-thumbnail"
                             src="${resource(dir: "images", file: "stilleasierthanchemo/SETC-Event-2014-6.jpg")}">
                    </div>

                    <div class="item">
                        <img alt="" title="" class="img-responsive img-thumbnail"
                             src="${resource(dir: "images", file: "stilleasierthanchemo/marathon-finishers.jpg")}">
                    </div>

                    <div class="item">
                        <img alt="" title="" class="img-responsive img-thumbnail"
                             src="${resource(dir: "images", file: "kegrun_mcsteps.jpg")}">
                    </div>

                </div>
                <!-- Indicators -->
                <ol class="carousel-indicators center-block">
                    <li data-target="#article-photo-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#article-photo-carousel" data-slide-to="1" class=""></li>
                    <li data-target="#article-photo-carousel" data-slide-to="2" class=""></li>

                </ol>
            </div>
        </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">

        <div class="col-md-12 text-center">
            <h3>Join us in our current campaign</h3><br/>

            <p class="lead">

                <strong>STILL EASIER THAN CHEMO</strong><br/>
                Help us raise money for colon cancer research at Virginia Commonwealth University’s Massey Cancer Center.
            </p>
        </div>

    </div>
    <br/>

    <div class="row center-block">
        <div class="col-md-4">&nbsp;</div>

        <div class="col-md-4">
            <g:link controller="philanthropy" action="event" class="btn btn-primary btn-lg btn-block" role="button">
                <i class="fa fa-play-circle-o fa-3x"></i>
                <br/>Join our campaign
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

