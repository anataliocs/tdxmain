<meta name="layout" content="main"/>


<div class="container marketing">

	<div class="row featurette text-center">
		<div class="col-md-12">
			<h2 class="featurette-heading">User <span
					class="text-muted">Status</span></h2>

		</div>

	</div>

	<hr class="featurette-divider">

	<div class="row featurette">
		<div class="col-md-12 text-center">

			<g:if test="${flash.successMsg}">
				<h3 class="fa fa-check-circle-o fa-5x"></h3>
				<br/>
			</g:if>

			<h3>${flash.successHeader}</h3><br/>

			<div class="lead">${flash.successMsg}</div>

		</div>

	</div>

</div>

