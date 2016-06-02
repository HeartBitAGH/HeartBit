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

    </#if>
    <#if currentUser??>
        <script src="/js/index.js"></script>


        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <label class="control-label" for="name">Name</label>
                    <div class="row">
                        <div class="col-md-6">
                            <p id="name">${currentUser.user.email}</p>
                        </div>
                        <#--<div class="col-md-6 text-right">-->
                            <#--<a id="register" href="#" class="btn btn-primary"><span-->
                                    <#--class="glyphicon glyphicon-plus"></span> Register</a>-->
                        <#--</div>-->
                    </div>
                    <br /> <br /> <label class="control-label" for="peer">Peer</label>
                    <div class="row">
                        <div class="col-md-6">
                            <input id="peer" name="peer" class="form-control" type="text"
                                   onkeydown="if (event.keyCode == 13) call();">
                        </div>
                        <div class="col-md-6 text-right">
                            <a id="call" href="#" class="btn btn-success"><span
                                    class="glyphicon glyphicon-play"></span> Call</a> <a id="terminate"
                                                                                         href="#" class="btn btn-danger"><span
                                class="glyphicon glyphicon-stop"></span> Stop</a>
                        </div>
                    </div>
                    <br />
                </div>
            </div>
            <div class="col-md-7">
                <div id="videoBig">
                    <video id="videoOutput" autoplay width="640px" height="480px"></video>
                </div>
                <div id="videoSmall">
                    <video id="videoInput" autoplay width="240px" height="180px"></video>
                </div>
            </div>
            <br />
        </div>
    </#if>

</ul>
</@c.page>