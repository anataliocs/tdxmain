<%@ page import="com.tdx.DonorLevelEnum" %>
<meta name="layout" content="main"/>
<title>Contact the E-Board of Theta Delta Chi at VCU</title>


<div class="container marketing">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">Manage <span
                    class="text-muted">Donor List</span></h2>
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

                        <div id="addDonationFormSuccessMsg" class="alert alert-success hidden"></div>

                        <div id="addDonationFormFailureMsg" class="alert alert-danger hidden"></div>



                        <g:form controller="donation" action="saveNew" class="form-inline">

                            <div class="form-group hide">
                                <input type="text" class="form-control" id="firstName" name="firstName"
                                       placeholder="First name">
                            </div>

                            <div class="form-group hide">
                                <input type="text" class="form-control" id="lastName" name="lastName"
                                       placeholder="Last Name">
                            </div>


                            <div class="form-group">
                                <label for="donationType">Brother</label>
                                <g:select from="${users}" id="userDonor" name="userDonor"
                                          optionKey="id"
                                          class="form-control"
                                          optionValue="fullName"
                                          required="required"/>

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

                            <div class="form-group">

                                <a data-toggle="modal" data-target="#newUserModal"
                                   class="navbar-btn btn btn-primary pull-right">
                                    <i id="btnAddNewUserIcon" class="fa fa-user-plus"></i> Create New Donor</a>

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
                                    <th class="text-center">Donation Level</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <g:each in="${users}" var="user">

                                    <g:set var="amount" value="${user.donation.asList().sum { it.amount }}"></g:set>
                                    <g:set var="donorLevel"
                                           value="${com.tdx.DonationController.getDonorLevel(amount)}"></g:set>

                                    <tr>
                                        <td>${user.firstName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.stormpathEmail}</td>
                                        <td>
                                            <p class="lead">
                                                <g:if test="${amount}">

                                                    <strong><i class="fa fa-usd"></i></strong>
                                                </g:if>

                                                ${amount}
                                            </p>
                                        </td>
                                        <td class="text-center">

                                            <g:render template="/blocks/donationIcon"></g:render>

                                        </td>

                                        <td><a class="btn btn-sm btn-primary"
                                               href="${createLink(controller: 'donation', action: 'details', params: [id: user.id])}">
                                            <i class="fa fa-plus-square-o"></i>&nbsp; Details</a>
                                        </td>
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


<!-- Contact Modal -->
<g:render template="modals/newUser"></g:render>