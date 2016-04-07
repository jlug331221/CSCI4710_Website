<%@ Page Title="Jeep Shop" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/Default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-9">
                <h1>Welcome</h1>
                <p>
                    Unlike your regular corprate website that sells you what you need we here at <i><b>[INSERT NAME HERE]</b></i> do not just want to be the place that you come to
        when you need a part that you can't find elsewhere, which we will have.  But we want to be a place that has a thriving community that lets us connect other fellow
        Jeep owners in your area together with local events that we sponsor in certain areas.
                </p>
                <br />
                <br />
                <div class="col-md-4">
                    <img src="Images/FreeShip.jpg" />
                </div>
                <div class="col-mid-5">
                    <ul>
                        <li><b>Over 100,000 Parts</b> for All Jeep vehicles.</li>
                        <li><b>Free Lifetime Tech Support</b> with every purchase.</li>
                        <li><b>Fast shipping.</b> Most orders ship the same day.</li>
                        <li><b>Free shipping</b> on orders $50 and over.**</li>
                        <li><b>Jeep Experts</b> waiting to take your call.</li>
                    </ul>
                </div>
                <br />
                <br />
                <h1>Jeep Prime</h1>
                <p>
                    Jeep Prime is our membership service that is reasonably priced at $49.99 a year.  With this subscrition you get access to special offers found directly
            on the site as well as special offers sent directly to you in your email.  
                </p>
                <div>
                    <a class="twitter-timeline center-block" width="600" height="500" href="https://twitter.com/Jeep" data-widget-id="718098841803878400">Tweets by @Jeep</a>
                    <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                    <a class="twitter-follow-button" href="https://twitter.com/Jeep">
                        Follow @Jeep
                    </a>
                </div>
            </div>
            <div class="col-md-3 hidden-sm">
                <img src="Images/Brands/Alloy.jpg" class="imgAds"/>
                <img src="Images/Brands/ARB.jpg" class="imgAds"/>
                <img src="Images/Brands/bestop.jpg" class="imgAds"/>
                <img src="Images/Brands/bushwacker.jpg" class="imgAds"/>
                <img src="Images/Brands/Corbeau.jpg" class="imgAds"/>
                <img src="Images/Brands/Mopar.jpg" class="imgAds"/>
                <img src="Images/Brands/rugged-ridge.png" class="imgAds"/>
                <img src="Images/Brands/skyjacker.jpg" class="imgAds"/>
                <img src="Images/Brands/tuffy.jpg" class="imgAds"/>
            </div>
        </div>
    </div>
</asp:Content>

