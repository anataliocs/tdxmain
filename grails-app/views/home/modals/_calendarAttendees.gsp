<!-- Modal -->

<!-- Modal -->

<div class="container modal fade" id="attendeesModal">
    <div class="modal-dialog" >
        <div class="modal-content" >

            <div id="attendeesBox" style="margin-top:50px;"
                 class="mainbox col-md-10 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Who's Going</div>

                        <div style="float:right; font-size: 80%; position: relative; top:-20px">
                            <button type="button" class="close" data-dismiss="modal"><span
                                    aria-hidden="true">&times;</span><span
                                    class="sr-only">Close</span></button>
                        </div>
                    </div>

                    <div style="padding-top:30px" class="panel-body">

                        <div class="well well-sm">
                            <div ng-repeat="attendee in eventAttendees">
                                <img src="http://api.randomuser.me/portraits/men/10.jpg" alt="President"
                                     class="img-circle">
                                <span>{{attendee.name}}</span>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>
</div>