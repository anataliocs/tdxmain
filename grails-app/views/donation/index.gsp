<%@ page import="com.tdx.DonorLevelEnum" %>
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
                                    <th>Donation Level</th>
                                </tr>
                                </thead>
                                <g:each in="${users}" var="user">

                                    <g:set var="amount" value="${user.donation.asList().sum { it.amount }}"></g:set>
                                    <g:set var="donorLevel"
                                           value="${com.tdx.DonationController.getDonorLevel(amount)}"></g:set>

                                    <tr>
                                        <td>${user.firstName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.stormpathLink}</td>
                                        <td>${amount}</td>
                                        <td class="text-center">

                                            <g:if test="${amount}">

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.MONROE_PARK_CLUB.name())}">
                                                    <!-- Monroe Park Club 50 -->
                                                    <span class="fa-stack">
                                                        <i class="fa fa-square fa-stack-2x"></i>
                                                        <i class="fa fa-check fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.SHAFER_COURT_CLUB.name())}">
                                                    <!-- Shafer Court Club 100 -->
                                                    <span class="fa-stack">
                                                        <i class="fa fa-circle-o fa-stack-2x"></i>
                                                        <i class="fa fa-check fa-stack-1x"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.FRANKLIN_STREET_CLUB.name())}">
                                                    <!-- Franklin Street Club 250 -->
                                                    <span class="fa-stack">
                                                        <i class="fa fa-square fa-stack-2x"></i>
                                                        <i class="fa fa-trophy fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.CRAB_TREE_FALLS_SOCIETY.name())}">
                                                    <!-- Crab Tree Falls Society 500 -->
                                                    <span class="fa-stack">
                                                        <i class="fa fa-circle-o fa-stack-2x"></i>
                                                        <i class="fa fa-trophy fa-stack-1x"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.BOURBON_CLUB.name())}">
                                                    <!-- Bourbon Club 1000 -->
                                                    <span class="fa-stack fa-lg ">
                                                        <i class="fa fa-square fa-stack-2x"></i>
                                                        <i class="fa fa-trophy fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.NINETEEN_SEVENTY_CLUB.name())}">
                                                    <!-- 1970 Club 1970 -->
                                                    <span class="fa-stack fa-lg ">
                                                        <i class="fa fa-circle-o fa-stack-2x"></i>
                                                        <i class="fa fa-trophy fa-stack-1x"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.EXECUTIVE_LOUNGE_SOCIETY.name())}">
                                                    <!-- Executive Lounge Society 2500 -->
                                                    <span class="fa-stack fa-2x ">
                                                        <i class="fa fa-square fa-stack-2x"></i>
                                                        <i class="fa fa-trophy fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.JEFFERSON_FOUNDERS_CIRCLE.name())}">
                                                    <!-- Jefferson Founders' Circle 5000 -->
                                                    <span class="fa-stack fa-2x ">
                                                        <i class="fa fa-circle-o fa-stack-2x"></i>
                                                        <i class="fa fa-trophy fa-stack-1x"></i>
                                                    </span>
                                                </g:if>

                                                <g:if test="${donorLevel.name().equals(DonorLevelEnum.SONS_OF_THE_GERMAN_CLUB.name())}">
                                                    <!-- Sons of the German Club 10000 -->
                                                    <span class="fa-stack fa-2x">
                                                        <i class="fa fa-circle fa-stack-2x"></i>
                                                        <i class="fa fa-diamond fa-stack-1x fa-inverse"></i>
                                                    </span>
                                                </g:if>

                                                <br/>
                                                ${donorLevel}

                                            </g:if>
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