<!-- Modal -->


<div class="modal fade" id="newUserModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Create New Donor</h4>
            </div>

            <div class="modal-body">
                <div class="row text-center">
                    <div class="col-md-12">

                        <p class="lead">Create a new donor to track donations.</p>

                        <div class="well well-sm">

                            <div id="addDonorFormSuccessMsg" class="alert alert-success hidden"></div>

                            <div id="addDonorFormFailureMsg" class="alert alert-danger hidden"></div>


                            <g:formRemote name="contactUsForm"
                                          url="[controller: 'donation', action: 'saveNewUserDonationLevel']"
                                          before="showAddDonorDisabledSubmit()"
                                          onComplete="clearAddDonorDisabledSubmit()"
                                          on404="alert('Error adding donor.  Please try again.')">
                                <div class="row">
                                    <div class="col-md-3">
                                        &nbsp;
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="firstName">
                                                First Name</label>
                                            <input type="text" class="form-control" id="firstName" name="firstName"
                                                   placeholder="Enter First Name"
                                                   required="required"/>
                                        </div>

                                        <div class="form-group">
                                            <label for="lastName">
                                                Last Name</label>

                                            <div class="input-group">
                                                <input type="text" class="form-control" id="lastName" name="lastName"
                                                       placeholder="Enter Last Name"
                                                       required="required"/></div>
                                        </div>

                                        <div class="form-group">
                                            <label for="donorLink">
                                                Link Donor</label>
                                            <g:select from="${accounts}" id="donorLink" name="donorLink"
                                                      optionKey="email"
                                                      class="form-control"
                                                      optionValue="fullName"
                                                      required="required"/>

                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        &nbsp;
                                    </div>

                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary pull-right" id="btnAddDonor">
                                            <i id="btnAddDonorIcon" class="fa fa-user-plus fa-2x"></i>
                                            &nbsp; Add Donor</button>
                                    </div>
                                </div>
                            </g:formRemote>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </div>
</div>