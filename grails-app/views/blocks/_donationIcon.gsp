<%@ page import="com.tdx.DonorLevelEnum" %>

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