<meta name="layout" content="main"/>

<div class="container marketing" ng-app="FacebookAPI">

    <div class="row featurette text-center">
        <div class="col-md-24">
            <h2 class="featurette-heading">Donate to the <span
                    class="text-muted">Alumni Association</span></h2>
            <span>Contribute through PayPal</span><br/><br/>

            <p class="lead">Do your part to help our Organization</p>

        </div>

    </div>

    <hr class="featurette-divider">

    <!-- START THE TIMELINE -->



    <div class="container" ng-controller="timelineCtrl">

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

                <p class="lead">Loading Message Feed...</p>
            </div>
        </div>

        <div class="row">

            <i class="fa fa-trophy "></i> Donor Level<br/><hr>

            Chris Anatalio
            <div class="progress">

                <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45"
                     aria-valuemin="0" aria-valuemax="100" style="width: 45%">
                    <span class="sr-only">45% Complete</span>
                </div>
            </div>

            <i class="fa fa-trophy fa-2x"></i> Donor Level<br/><hr>

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

