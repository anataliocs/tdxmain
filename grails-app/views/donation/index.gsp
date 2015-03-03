<meta name="layout" content="main"/>
<title>Contact the E-Board of Theta Delta Chi at VCU</title>


<div class="container marketing">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">Manage <span
                    class="text-muted">Donations</span></h2>
            <span>Theta Delta Chi Rho Triton</span><br/><br/>

            <p class="lead">View and update the current Donor List</p>

        </div>
    </div>

    <hr class="featurette-divider">

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">

                        <h3>
                            Add new donation <small></small></h3><br/>

                        <div id="contactUsFormSuccessMsg" class="alert alert-success hidden"></div>

                        <div id="contactUsFormFailureMsg" class="alert alert-danger hidden"></div>



                        <g:form controller="donation" action="saveNew" class="form-inline">

                            <div class="form-group">

                                <input type="text" class="form-control" id="firstName" name="firstName"
                                       placeholder="First name" required="required">
                            </div>

                            <div class="form-group">

                                <input type="text" class="form-control" id="lastName" name="lastName"
                                       placeholder="Last Name" required="required">
                            </div>

                            <div class="input-group">

                                <span class="input-group-addon">$</span>
                                <input type="text" class="form-control" id="donationAmount" name="donationAmount"
                                       placeholder="Enter donation amount"
                                       required="required"/>
                                <span class="input-group-addon">.00</span>
                            </div>

                            <div class="form-group">
                                <label for="donationType">Donation Type</label>
                                <g:select from="${donationTypeList}" id="donationType" name="donationType"
                                          optionKey="key"
                                          class="form-control"
                                          required="required"/>

                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary" id="btnContactUs"
                                        ng-click="disableSubmit">
                                    <i id="btnContactUsIcon" class="fa fa-play-circle-o"></i>
                                    &nbsp;Submit</button>
                            </div>
                        </g:form>

                    </div>

                    <div class="well well-sm">
                        <h3>
                            Current Donors List <small></small></h3>

                        <div class="table-responsive">

                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Link</th>
                                    <th>Donation Total</th>
                                </tr>
                                </thead>
                                <g:each in="${users}" var="user">

                                    <tr>
                                        <td>${user.firstName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.stormpathLink}</td>
                                        <td>${user.donation.asList().sum { it.amount }}</td>
                                    </tr>

                                </g:each>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>