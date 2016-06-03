<#import "/spring.ftl" as spring>
<#import "base.ftl" as c/>
<@c.page title="Create new user">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Create a new user</title>
</head>
<body>

<form role="form" action="" method="post" class="form-horizontal">
    <fieldset>
        <legend>Create new user</legend>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <div class="form-group">
            <label for="email" class="col-lg-2 control-label">Email</label>
            <div class="col-lg-10">
                <input type="email" name="email" id="email" value="${form.email}" required autofocus/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-lg-2 control-label">Password</label>
            <div class="col-lg-10">
                <input type="password" name="password" id="password" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-lg-2 control-label">Repeat password</label>
            <div class="col-lg-10">
                <input type="password" name="passwordRepeated" id="passwordRepeated" required/>
            </div>
        </div>
        <div class="form-group">
            <label for="radioiinline" class="col-lg-2 control-label">Select a role in the system</label>
            <div class="col-lg-10 ">
                <label class="radio-inline">
                    <input type="radio" name="role" id="role" value="GPDOCTOR">GPDOCTOR
                </label>
                <label class="radio-inline">
                    <input type="radio" name="role" id="role" value="CARDIOLOGIST">CARDIOLOGIST
                </label>
                <label class="radio-inline">
                    <input type="radio" name="role" id="role" value="ADMIN">ADMIN
                </label>
            </div>
        </div>

        <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
                <button type="reset" class="btn btn-default">Cancel</button>
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
        </div>
    </fieldset>
</form>

<@spring.bind "form" />
<#if spring.status.error>
<ul>
    <#list spring.status.errorMessages as error>
        <li>${error}</li>
    </#list>
</ul>
</#if>

</body>
</html>
</@c.page>