<!-- Modal -->
<div class="modal fade" id="updateDonationModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Update Donation</h4>
            </div>

            <div class="modal-body">
                <div class="row text-center">
                    <div class="col-md-12">

                        <p class="lead">Edit donation values.</p>

                        <div class="well well-sm">

                            <div id="addDonorFormSuccessMsg" class="alert alert-success hidden"></div>

                            <div id="addDonorFormFailureMsg" class="alert alert-danger hidden"></div>


                            <g:formRemote name="contactUsForm"
                                          url="[controller: 'donation', action: 'updateDonation']"
                                          before="showAddDonorDisabledSubmit()"
                                          onComplete="successAjaxFormSubmit('btnAddDonor','btnAddDonorIcon','addDonorFormSuccessMsg',' Donation updated.')"
                                          on404="alert('Error updating donation.  Please try again.')">
                                <div class="row">
                                    <div class="col-md-3">
                                        &nbsp;
                                    </div>

                                    <input type="hidden" id="donationId" name="donationId" value="">

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="donationAmount">
                                                Amount</label>


                                            <div class="input-group">
                                                <span class="input-group-addon">$</span>
                                                <input type="text" class="form-control" id="donationAmount"
                                                       name="donationAmount"
                                                       placeholder="Enter Donation Amount"
                                                       required="required"/>
                                                <span class="input-group-addon">.00</span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="donationType">
                                                Type</label>
                                            <g:select from="${donationTypeList}" id="donationType" name="donationType"
                                                      optionKey="key"
                                                      class="form-control"
                                                      required="required"/>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        &nbsp;
                                    </div>

                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary pull-right" id="btnAddDonor">
                                            <i class="fa fa-pencil-square"></i>
                                            &nbsp; Update</button>
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