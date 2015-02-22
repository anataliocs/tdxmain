<meta name="layout" content="main"/>
<title>Contact the E-Board of Theta Delta Chi at VCU</title>


<div class="container marketing">

    <div class="container" style="margin-top: 7em">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Donations <small></small></h1>
            </div>
        </div>
    </div>


    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="well well-sm">

                        <div id="contactUsFormSuccessMsg" class="alert alert-success hidden"></div>

                        <div id="contactUsFormFailureMsg" class="alert alert-danger hidden"></div>


                        <form class="form-inline">

                            <div class="form-group">
                                <label for="inputName1">First Name</label>
                                <input type="text" class="form-control" id="inputName1" name="inputName1"
                                       placeholder="First name" required="required">
                            </div>

                            <div class="form-group">
                                <label for="inputName2">Last Name</label>
                                <input type="text" class="form-control" id="inputName2" name="inputName2"
                                       placeholder="Last Name" required="required">
                            </div>

                            <div class="input-group">

                                <span class="input-group-addon">$</span>
                                <input type="text" class="form-control" id="donationAmount" name="donationAmount"
                                       placeholder="Enter donation amount(Rounded to nearest dollar)"
                                       required="required"/>
                                <span class="input-group-addon">.00</span>
                            </div>

                            <div class="form-group">
                                <label for="donationType">Donation Type</label>
                                <g:select from="${donationTypeList}" id="donationType" name="donationType"
                                          class="form-control"
                                          required="required"/>

                            </div>

                            <button type="submit" class="btn btn-primary pull-right" id="btnContactUs"
                                    ng-click="disableSubmit">
                                <i id="btnContactUsIcon" class="fa fa-play-circle-o"></i>
                                &nbsp;Submit</button>

                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
</div>