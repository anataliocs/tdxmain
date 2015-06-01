<%@ page import="com.tdx.DonorLevelEnum" %>
<meta name="layout" content="main"/>
<title>Admin page</title>


<div class="container marketing">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">Manage <span
                    class="text-muted">Announcements</span></h2>

            <p class="lead">Manage announcements</p>

        </div>
    </div>

    <hr class="featurette-divider">

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">

                        <h3>
                            Add new announcement <small></small></h3><br/>

                        <div id="addDonationFormSuccessMsg" class="alert alert-success hidden"></div>

                        <div id="addDonationFormFailureMsg" class="alert alert-danger hidden"></div>



                        <g:form controller="donation" action="saveNew" class="form-horizontal">

                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="donationType">Message</label>
                                </div>

                                <div class="col-sm-10">
                                    <textarea class="form-control" rows="3"></textarea>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-sm-2">
                                    <label for="donationType">Announcement Type</label>
                                </div>

                                <div class="col-sm-4">
                                    <g:select from="${donationTypeList}" id="donationType" name="donationType"
                                              optionKey="key"
                                              class="form-control"
                                              required="required"/>
                                </div>
                            </div>


                            <div class="form-group">
                                <div class="col-sm-6">
                                    <button type="submit" class="btn btn-primary" id="btnContactUs"
                                            ng-click="disableSubmit">
                                        <i id="btnContactUsIcon" class="fa fa-play-circle-o"></i>
                                        &nbsp;Submit</button>
                                </div>
                            </div>

                        </g:form>

                    </div>

                    <div class="well well-sm">
                        <h3>
                            Previous Announcements <small></small></h3>

                        <div class="table-responsive">

                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Message</th>
                                    <th>Type</th>

                                </tr>
                                </thead>
                                <g:each in="${users}" var="user">

                                    <tr>
                                        <td>jkjh</td>
                                        <td>kjhkjh</td>
                                        <td>kjhkhj</td>

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
