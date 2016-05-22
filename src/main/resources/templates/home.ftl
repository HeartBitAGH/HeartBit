<#import "base.ftl" as c/>
<@c.page title="Home">
<ul>
    <#if !currentUser??>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <img src="/images/logo.jpg" class="img-responsive"/>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row"><br><br></div>
            <div class="row">
                <div class="col-xs-12">
                    <a href="/login">Log in</a>
                </div>
            </div>
        </div>

    </#if>
    <#if currentUser??>

            <form action="/logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Log out</button>
            </form>

        <a href="/user/${currentUser.id}">View myself</a>
    </#if>
    <#--<#if currentUser?? && currentUser.role == "ADMIN">-->
        <#--<li><a href="/user/create">Create a new user</a></li>-->
        <#--<li><a href="/users">View all users</a></li>-->
    <#--</#if>-->
</ul>
</@c.page>