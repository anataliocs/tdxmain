<meta name="layout" content="main"/>

<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette text-center">
        <div class="col-md-24">
            <h2 class="featurette-heading">Donate to the <span
                    class="text-muted">Alumni Association</span></h2>
            <span>Contribute through PayPal</span><br/><br/><br/>

            <p class="lead">
                Use the link below to make a donation to the Theta Delta Chi
            </p>

            <p class="lead">
                Donations will be used to fund re-colonization efforts and social functions.
            </p>

            <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
                <input type="hidden" name="cmd" value="_donations">
                <input type="hidden" name="business" value="treasurer.ptaa@gmail.com">
                <input type="hidden" name="lc" value="US">
                <input type="hidden" name="item_name" value="Theta Delta Chi">
                <input type="hidden" name="no_note" value="0">
                <input type="hidden" name="currency_code" value="USD">
                <input type="hidden" name="bn" value="PP-DonationsBF:btn_donateCC_LG.gif:NonHostedGuest">
                <input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0"
                       name="submit" alt="PayPal - The safer, easier way to pay online!">
                <img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
            </form>

        </div>

    </div>

    <hr class="featurette-divider">

    <!-- START THE TIMELINE -->



    <div class="container" ng-controller="timelineCtrl">

    <p class="lead text-center">View Current Donor Levels below<br/>

    </p>

    <div class="text-center">
            <button id="refreshTimelineButton" class="btn btn-primary" ng-click="fbGetMessages()">
                <i class="fa fa-2x fa-refresh"></i>
                <span>Refresh Donation List</span>
            </button>
            <br/>
            <br/>

        </div>

        <div id="timelineLoadingDiv" class="row hide">
            <div class="col-md-12 text-center">
                <i class="fa fa-5x fa-spinner fa-spin"></i>
                <br/>

                <p class="lead">Loading Donations Feed...</p>
            </div>
        </div>

        <div class="row">

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Sons of the German Club</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 10000</span><br/></h3>
            <br/><hr>

            Chris Anatalio
            <div class="progress">

                <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45"
                     aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                    <span class="sr-only">45% Complete</span>
                </div>
            </div>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Jefferson Founders' Circle</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 5000</span><br/></h3>
            <br/><hr>


            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Executive Lounge Society</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 2500</span><br/></h3>
            <br/><hr>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> 1970 Club</span> <span class="pull-right"><i
                    class="fa fa-usd fa-2x"></i> 1970</span><br/></h3>
            <br/><hr>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Bourbon Club</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 1000</span><br/></h3>
            <br/><hr>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Crab Tree Falls Society</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 500</span><br/></h3>
            <br/><hr>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Franklin Street Club</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 250</span><br/></h3>
            <br/><hr>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Shafer Court Club</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 100</span><br/></h3>
            <br/><hr>

            <br/>

            <h3><span class="pull-left"><i class="fa fa-trophy fa-2x"></i> Monroe Park Club</span> <span
                    class="pull-right"><i class="fa fa-usd fa-2x"></i> 50</span><br/></h3>
            <br/><hr>

            Jim Chinn
            <div class="progress">
                <div class="progress-bar progress-bar-success" style="width: 35%">
                    <span class="sr-only">35% Complete (success)</span>
                </div>

                <div class="progress-bar progress-bar-warning progress-bar-striped" style="width: 20%">
                    <span class="sr-only">20% Complete (warning)</span>
                </div>

                <div class="progress-bar progress-bar-danger" style="width: 10%">
                    <span class="sr-only">10% Complete (danger)</span>
                </div>
            </div>

            <i class="fa fa-trophy fa-3x"></i> Donor Level<br/><hr>

            Nick Betts
            <div class="progress">
                <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar"
                     aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                    <span class="sr-only">40% Complete (success)</span>
                </div>
            </div>

            Arthur Yu
            <div class="progress">
                <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20"
                     aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                    <span class="sr-only">20% Complete</span>
                </div>
            </div>

            Taylor Early
            <div class="progress">
                <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar"
                     aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                    <span class="sr-only">60% Complete (warning)</span>
                </div>
            </div>

            <div class="progress">
                <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80"
                     aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                    <span class="sr-only">80% Complete (danger)</span>
                </div>
            </div>

        </div>

    </div>
</div>

