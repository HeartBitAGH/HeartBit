<#import "base.ftl" as c/>
<@c.page title="Login">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Log in</title>
</head>
<body>
<#--<h1>Log in</h1>-->

<p>Demo accounts:</p>
<p>admin@heartbit / demo</p>
<p>gp@heartbit / demo</p>
<p>cardio@heartbit / demo</p>

<form role="form" action="/login" method="post" class="form-horizontal">
    <fieldset>
        <legend>Log in</legend>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <div class="form-group">
                <label for="email" class="col-lg-2 control-label">Email</label>
                <div class="col-lg-10">
                    <input type="email" name="email" id="email" required autofocus/>
                </div>
        </div>
        <div class="form-group">
            <#--<label for="password">Password</label>-->
                <label for="password" class="col-lg-2 control-label">Password</label>
                <div class="col-lg-10">
                    <input type="password" name="password" id="password" required/>
                </div>
        </div>
        <#--<div>-->
            <#--<label for="remember-me">Remember me</label>-->
            <#--<input type="checkbox" name="remember-me" id="remember-me"/>-->
        <#--</div>-->

        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="reset" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Sign in</button>
            </div>
        </div>
    </fieldset>
</form>

<#if error.isPresent()>
<p>The email or password you have entered is invalid, try again.</p>
</#if>
</body>
</html>
</@c.page>