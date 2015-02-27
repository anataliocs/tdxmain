<div class="navbar-wrapper">
    <div class="container">
<div class="navbar navbar-default navbar-fixed-bottom">
    <div class="container">

    <!-- Logged in -->
        <sec:ifAllGranted roles="ROLE_USER">
            <div class="row">
                <div class="col-md-4">
                    <p class="lead lightText pull-left">Donate to the Rho Triton Alumni Association

                    </p>
                </div>

                <div class="col-md-6">
                    <div class="hidden-xs hidden-sm">
                        Progress towards Recolonization

                        <div class="progress">

                            <div class="progress-bar"
                                 role="progressbar"
                                 aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"
                                 style="width: 50%">
                                $16,249/$63,000
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Smaller buttons for mobile -->

                <div class="row hidden-md hidden-lg">
                    <div class="col-md-2">
                        <button data-toggle="modal" data-target="#donateModal"
                                class="navbar-btn btn btn-xs btn-primary pull-right">
                            <i class="fa fa-play-circle-o"></i> Donate</button>
                    </div>

                </div>

                <!-- Full size for desktop -->

                <div class="row hidden-xs hidden-sm">
                    <div class="col-md-2">
                        <button data-toggle="modal" data-target="#donateModal"
                                class="navbar-btn btn btn-primary pull-right">
                            <i class="fa fa-play-circle-o"></i> Donate</button>
                    </div>

                </div>

            </div>
        </sec:ifAllGranted>


    <!-- Not logged in -->
        <sec:ifNotGranted roles="ROLE_USER">

            <div class="row">
                <div class="col-md-6">
                    <p class="lead lightText pull-left">Donate to the Rho Triton Alumni Association

                    </p>
                </div>

                <!-- Smaller buttons for mobile -->

                <div class="row hidden-md hidden-lg">
                    <div class="col-md-6">
                        <button data-toggle="modal" data-target="#donateModal"
                                class="navbar-btn btn btn-sm btn-primary pull-right">
                            <i class="fa fa-play-circle-o"></i> Donate</button>
                    </div>

                </div>

                <!-- Full size for desktop -->

                <div class="row hidden-xs hidden-sm">
                    <div class="col-md-6">
                        <button data-toggle="modal" data-target="#donateModal"
                                class="navbar-btn btn btn-primary pull-right">
                            <i class="fa fa-play-circle-o"></i> Donate</button>
                    </div>

                </div>
            </div>

        </sec:ifNotGranted>

    </div>

</div>
    </div>
</div>