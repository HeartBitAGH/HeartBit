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

            <br /> <br />

            <div class="col-md-12 col-lg-8 col-sm-12">

                <div id="videoBig">
                    <video id="videoOutput" autoplay width="640px" height="480px" controls></video>
                </div>
                <div id="videoSmall">
                    <video id="videoInput" autoplay width="240px" height="180px"></video>
                </div>

            </div>

            <div class="col-lg-4 col-md-6 col-sm-6">

                <label class="control-label" for="name">Name</label>
                    <p id="name">${currentUser.user.email}</p>

                <br />

                <label class="control-label" for="peer">Peer</label>

                    <input id="peer" name="peer" class="form-control" type="text"
                           onkeydown="if (event.keyCode == 13) call();">

                <br /> <br />

                <div>
                    <a id="call" href="#" class="btn btn-success">
                        <span class="glyphicon glyphicon-play"></span> Call</a>
                    <a id="terminate" href="#" class="btn btn-danger">
                        <span class="glyphicon glyphicon-stop"></span> Stop</a>
                </div>

            </div>
        </div>

    </#if>


</ul>
</@c.page>