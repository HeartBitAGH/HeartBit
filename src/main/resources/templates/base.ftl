<#macro page title>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>${title?html}</title>
    <link rel="stylesheet" href="/webjars/bootstrap/3.2.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/webjars/ekko-lightbox/4.0.2/dist/ekko-lightbox.min.css">
    <link rel="stylesheet" href="/css/kurento.css">
    <script src="/webjars/jquery/2.2.4/jquery.min.js"></script>
    <script src="/webjars/ekko-lightbox/4.0.2/dist/ekko-lightbox.min.js"></script>
    <script src="/webjars/draggabilly/2.1.0/draggabilly.pkgd.min.js"></script>
    <script src="/js/adapter.min.js"></script>
    <script src="/js/kurento-utils.min.js"></script>
</head>
<body>
<#--<nav role="navigation">-->
    <#--<ul>-->
    <#--<#if !currentUser??>-->
        <#--<li><a href="/login">Log in</a></li>-->
    <#--</#if>-->
    <#--<#if currentUser??>-->
        <#--<li>-->
            <#--<form action="/logout" method="post">-->
                <#--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>-->
                <#--<button type="submit">Log out</button>-->
            <#--</form>-->
        <#--</li>-->
        <#--<li><a href="/user/${currentUser.id}">View myself</a></li>-->
    <#--</#if>-->
    <#--<#if currentUser?? && currentUser.role == "ADMIN">-->
        <#--<li><a href="/user/create">Create a new user</a></li>-->
        <#--<li><a href="/users">View all users</a></li>-->
    <#--</#if>-->
    <#--</ul>-->
<#--</nav>-->

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">
                    HeartBIT
                </a>
            </div>

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                    <li><a href="#">Link</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">Link</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- header section -->
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-lg-offset-1 main-container">
                <#nested/>
            </div>
        </div>
    </div>
</body>
</html>

</#macro>