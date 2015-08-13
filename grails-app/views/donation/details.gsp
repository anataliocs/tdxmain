<%@ page import="com.tdx.DonorLevelEnum" %>
<meta name="layout" content="main"/>
<title>Donation Details</title>


<div class="container marketing">

    <div class="row featurette text-center">
        <div class="col-md-12">
            <h2 class="featurette-heading">Manage <span
                    class="text-muted">Donations</span></h2>
            <span>Theta Delta Chi Rho Triton</span><br/><br/>

            <p class="lead">View and update the individual donations</p>

        </div>
    </div>

    <hr class="featurette-divider">

    <div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-center">
                        <a class="btn btn-primary" href="${createLink('controller': 'donation', 'action': 'index')}"><i
                                class="fa fa-2x fa-step-backward">

                        </i> &nbsp;Return to Donor Mgmt</a>
                    </div><br/>

                    <div class="well well-sm">
                        <h3>
                            Donations <small></small></h3>

                        <div class="table-responsive">

                            <table class="table table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>Date</th>
                                    <th>Amount</th>
                                    <th>Type</th>

                                </tr>
                                </thead>
                                <g:each in="${donations}" var="d">

                                    <tr>
                                        <td><g:formatDate format="MMM dd yyyy hh:mma" date="${d.date}"/></td>
                                        <td>${d.amount}</td>
                                        <td>${d.donationType}</td>


                                        <td><a class="btn btn-sm btn-primary"
                                               href="${createLink(controller: 'donation', action: 'delete', params: [id: d.id])}">
                                            <i class="fa fa-trash-o"></i>&nbsp; Delete</a>
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