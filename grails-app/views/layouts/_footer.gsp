<!-- FOOTER -->
<br/>
<footer>

    <hr/><br/>

    <div class="row">
        <div class="col-md-6">
            <div class="footer-container-left ">
                <h3>About Us <span>The Rho Triton Charge of Theta Delta Chi ( <span
                        class="greekLetters">&#920;&#916;&#935;</span> ) is the oldest greek organization at Virginia Commonwealth University, originally chartered in 1970.  Since 1847, Theta Delta Chi has believed that it is the duty of every member to improve himself intellectually, morally, and socially through friendship. Currently, the fraternity fields Charges (chapters) at over thirty institutions of higher education in North America.

                This website is maintained by the Communications Chair of the Alumni Association for the Rho Triton Charge of Theta Delta Chi. Here you can access a variety of information about Theta Delta Chi, historical and organizational facts, information about scholarships, news articles and other resources.
                </span>
                </h3>


                <h3>
                    <a href="<g:createLink controller='home' action='index'/>">Home</a> |
                    <sec:ifAllGranted roles="ROLE_USER">
                        <g:if test="${grailsApplication.config.grails.tdx.showprivatedata}">
                            <a href="<g:createLink controller='home' action='calendar'/>">Calendar</a> |
                        </g:if>
                    </sec:ifAllGranted>
                    <a href="<g:createLink controller='philanthropy' action='event'/>">Philanthropy</a> |
                    <a href="<g:createLink controller='contact' action='index'/>">Contact</a>

                </h3><br/>
                <g:set var="today" value="${new Date()}"/>

                <h3>
                    <span>Copyright &copy;${today[Calendar.YEAR]}  Theta Delta Chi. All Rights Reserved.</span><br/><br/>

                    <span>
                        <a href="http://getbootstrap.com/">Bootstrap</a> and <a
                            href="http://fortawesome.github.io/Font-Awesome/">Font Awesome</a> CDN by
                    </span>

                    <a href="http://bit.ly/maxCDN" target="_blank" class="text-center center-block">
                        <img src="${createLinkTo(dir: 'images', file: 'maxcdn.png')}"></a>

                    <span>
                        Built with <a href="https://grails.org/">Grails</a> and <a
                            href="https://angularjs.org/">Angular JS</a> by
                        <br/>
                        <a href="http://codedevstuff.blogspot.com/">Chris Anatalio</a><br/>
                        <a href="https://twitter.com/CAnatalio"><i class="fa fa-twitter fa-fw fa-2x"></i></a>
                        <a href="https://plus.google.com/u/0/+chrisanatalio"><i
                                class="fa fa-google-plus fa-fw fa-2x"></i></a>
                        <a href="https://github.com/anataliocs"><i class="fa fa-github fa-fw fa-2x"></i></a>
                        <a href="https://www.linkedin.com/in/anataliocs"><i class="fa fa-linkedin fa-fw fa-2x"></i></a>
                        <a href="http://stackoverflow.com/users/555177/anataliocs"><i
                                class="fa fa-stack-overflow fa-fw fa-2x"></i></a>

                    </span>
                </h3>

            </div>
        </div>

        <div class="col-md-6">
            <div class="footer-container-right">
                <h3 class="greekLetters">&#920;&#916;&#935;</h3>

                <h3>Theta Delta Chi Fraternity <span>Rho Triton Alumni Association</span></h3>

                <h3><span class="footerLabel">@ VCU</span> <span>Go Rams!</span></h3>

                <h3><span class="footerLabel">Address:</span>
                    <i class="fa fa-map-marker"></i>
                    <span>
                        <g:message code="tdx.labels.chargehouse.address"/>
                        <g:message code="tdx.labels.chargehouse.address2"/>
                    </span></h3>

                <br/>


                <h3>Contact Us <br/><br/>


                    <span class="footerLabel">President:</span>
                    <i class="fa fa-user"></i> <span><g:message code="tdx.labels.officer.name.president"/></span>
                    <i class="fa fa-envelope-square"></i>
                    <span><a href="mailto:<g:message
                            code="tdx.labels.officer.email.president"/>?Subject=Inquiry%20from%20TDX%20website"
                             target="_blank">
                        <g:message code="tdx.labels.officer.email.president"/>
                    </a></span>
                    <br/>


                    <span class="footerLabel">Vice President:</span>
                    <i class="fa fa-user"></i> <span><g:message code="tdx.labels.officer.name.vicepresident"/></span>
                    <i class="fa fa-envelope-square"></i>
                    <span><a href="mailto:<g:message
                            code="tdx.labels.officer.email.vicepresident"/>?Subject=Inquiry%20from%20TDX%20website"
                             target="_blank">
                        <g:message code="tdx.labels.officer.email.vicepresident"/>
                    </a></span>
                    <br/>


                    <span class="footerLabel">Philanthropy Chair:</span>
                    <i class="fa fa-user"></i> <span><g:message code="tdx.labels.officer.name.philanthropy"/></span>

                    <i class="fa fa-envelope-square"></i>
                    <span><a href="mailto:<g:message
                            code="tdx.labels.officer.email.philanthropy"/>?Subject=Inquiry%20from%20TDX%20website"
                             target="_blank">
                        <g:message code="tdx.labels.officer.email.philanthropy"/>
                    </a></span>
                    <br/>


                    <span class="footerLabel">Social Chair:</span>
                    <i class="fa fa-user"></i> <span><g:message code="tdx.labels.officer.name.social"/></span>

                    <i class="fa fa-envelope-square"></i>
                    <span><a href="mailto:<g:message
                            code="tdx.labels.officer.email.social"/>?Subject=Inquiry%20from%20TDX%20website"
                             target="_blank">
                        <g:message code="tdx.labels.officer.email.social"/>
                    </a></span>
                    <br/>


                    <span class="footerLabel">Fundraising Chair:</span>
                    <i class="fa fa-user"></i> <span><g:message code="tdx.labels.officer.name.fundraising"/></span>

                    <i class="fa fa-envelope-square"></i>

                    <span><a href="mailto:<g:message
                            code="tdx.labels.officer.email.fundraising"/>?Subject=Inquiry%20from%20TDX%20website"
                             target="_blank">
                        <g:message code="tdx.labels.officer.email.fundraising"/>
                    </a></span>
                    <br/>
                </h3>

                <br/>

                <h3><span class="footerLabel">Follow <span
                        class="greekLetters">&#920;&#916;&#935;</span> on Social Media</span></h3>

                <div class="text-center center-block" id="social">

                    <a href="https://www.facebook.com/thetadeltachivcu/timeline"><i
                            class="fa fa-facebook-square fa-3x social-fb"></i>
                    </a>
                    <a href="https://twitter.com/tdxvcu"><i
                            class="fa fa-twitter-square fa-3x social-tw"></i></a>
                    <a href="https://plus.google.com/u/0/b/110170706495104954200/+Tdxvcu-rhoTriton"><i
                            class="fa fa-google-plus-square fa-3x social-gp"></i>
                    </a>
                    <a href="mailto:anataliocs@gmail.com"><i
                            class="fa fa-envelope-square fa-3x social-em"></i></a>
                </div>

            </div>
        </div>
    </div>

</footer>
