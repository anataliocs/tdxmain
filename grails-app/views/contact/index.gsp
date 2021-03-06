<meta name="layout" content="main"/>
<title>Contact the E-Board of Theta Delta Chi at VCU</title>

<g:javascript library="contactUs"/>

<div class="container marketing">
    <div class="jumbotron jumbotron-sm contact-us">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-12">
                    <div class="page-header">
                        <h1>
                            Contact Us<small></small></h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-8">
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
                                        <textarea name="message" id="message" class="form-control" rows="9" cols="25"
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

                <div class="col-md-4">
                    <form>
                        <!--
                    <legend><span class="glyphicon glyphicon-globe"></span> Visit Our House</legend>

                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3164.3021236411496!2d-77.4552779!3d37.5243748!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b11176d3bd31f7%3A0xd03e8234ed339cff!2s2000+Riverside+Dr%2C+Richmond%2C+VA+23225!5e0!3m2!1sen!2sus!4v1410574019562"
                            width="400" height="300" frameborder="0" style="border:0"></iframe>
                    <address>
                        <strong>Theta Delta Chi Charge House </strong> <i class="fa fa-map-marker"></i> <br>
                        <g:message code="tdx.labels.chargehouse.address"/><br/>
                        <g:message code="tdx.labels.chargehouse.address2"/><br/>
                    </address>
                    -->
                        <legend><span class="glyphicon glyphicon-user"></span> Our Executive Board</legend>

                        <div class="well well-sm text-center">
                            <img src="${resource(dir: 'images', file: 'portraits/taylor-early.jpg')}" alt="President"
                                 class="img-thumbnail"
                                 height="60" width="60">

                            <h3>President:</h3>
                            <i class="fa fa-user"></i> <span><g:message
                                code="tdx.labels.officer.name.president"/></span><br/>

                            <i class="fa fa-envelope-square"></i>

                            <a href="mailto:<g:message
                                    code='tdx.labels.officer.email.president'/>?Subject=Inquiry%20from%20TDX%20website"
                               target="_blank"><g:message code="tdx.labels.officer.email.president"/></a><br/>

                        </div>

                        <div class="well well-sm text-center">
                            <img src="${resource(dir: 'images', file: 'portraits/nick-betts.jpg')}" alt="VicePresident"
                                 class="img-thumbnail"
                                 height="60" width="60">

                            <h3>Vice President:</h3>
                            <i class="fa fa-user"></i> <span><g:message
                                code="tdx.labels.officer.name.vicepresident"/></span><br/>

                            <i class="fa fa-envelope-square"></i>
                            <a href="mailto:<g:message
                                    code='tdx.labels.officer.email.vicepresident'/>?Subject=Inquiry%20from%20TDX%20website"
                               target="_blank"><g:message code="tdx.labels.officer.email.vicepresident"/></a>

                        </div>

                        <div class="well well-sm text-center">
                            <img src="${resource(dir: 'images', file: 'portraits/arthur-yu.jpg')}" alt="Social Chair"
                                 class="img-thumbnail"
                                 height="60" width="60">

                            <h3>Social Chair:</h3>
                            <i class="fa fa-user"></i> <span><g:message
                                code="tdx.labels.officer.name.social"/></span><br/>

                            <i class="fa fa-envelope-square"></i>
                            <a href="mailto:<g:message
                                    code='tdx.labels.officer.email.social'/>?Subject=Inquiry%20from%20TDX%20website"
                               target="_blank"><g:message code="tdx.labels.officer.email.social"/></a>
                        </div>

                        <div class="well well-sm text-center">
                            <img src="${resource(dir: 'images', file: 'portraits/ahmad-mojaddidi.jpg')}"
                                 alt="Philanthropy Chair" class="img-thumbnail"
                                 height="60" width="60">

                            <h3>Philanthropy Chair:</h3>
                            <i class="fa fa-user"></i> <span><g:message
                                code="tdx.labels.officer.name.philanthropy"/></span><br/>

                            <i class="fa fa-envelope-square"></i>
                            <a href="mailto:<g:message
                                    code='tdx.labels.officer.email.philanthropy'/>?Subject=Inquiry%20from%20TDX%20website"
                               target="_blank"><g:message code="tdx.labels.officer.email.philanthropy"/></a>

                        </div>

                        <div class="well well-sm text-center">
                            <img src='<g:message code="tdx.labels.officer.name.fundraising.img.src"/>'
                                 alt="Fundraising Chair" class="img-thumbnail"
                                 height="60" width="60">

                            <h3>Fundraising Chair:</h3>

                            <i class="fa fa-user"></i> <span><g:message
                                code="tdx.labels.officer.name.fundraising"/></span><br/>

                            <i class="fa fa-envelope-square"></i>
                            <a href="mailto:<g:message
                                    code='tdx.labels.officer.email.fundraising'/>?Subject=Inquiry%20from%20TDX%20website"
                               target="_blank"><g:message code="tdx.labels.officer.email.fundraising"/></a>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>