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

                            <div id="contactUsFormSuccessMsg" class="alert alert-success hidden"></div>

                            <div id="contactUsFormFailureMsg" class="alert alert-danger hidden"></div>


                            <g:formRemote name="contactUsForm"
                                          url="[controller: 'contact', action: 'sendEmail']"
                                          before="showContactUsDisabledSubmit()"
                                          onComplete="clearContactUsDisabledSubmit()"
                                          on404="alert('Error sending email.  Please try again.')">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">
                                                Name</label>
                                            <input type="text" class="form-control" id="name" name="name"
                                                   placeholder="Enter your full name"
                                                   required="required"/>
                                        </div>

                                        <div class="form-group">
                                            <label for="email">
                                                Email Address</label>

                                            <div class="input-group">
                                                <span class="input-group-addon"><span
                                                        class="glyphicon glyphicon-envelope"></span>
                                                </span>
                                                <input type="email" class="form-control" id="email" name="email"
                                                       placeholder="Enter email"
                                                       required="required"/></div>
                                        </div>

                                        <div class="form-group">
                                            <label for="subject">
                                                Subject</label>
                                            <g:select from="${subjectsList}" name="subject" class="form-control"
                                                      required="required"/>

                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">
                                                Message</label>
                                            <textarea name="message" id="message" class="form-control" rows="9"
                                                      cols="25"
                                                      required="required"
                                                      placeholder="Enter your message here"></textarea>
                                        </div>
                                    </div>

                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs"
                                                ng-click="disableSubmit">
                                            <i id="btnContactUsIcon" class="fa fa-paper-plane-o fa-2x"></i>
                                            &nbsp;Send Message</button>
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