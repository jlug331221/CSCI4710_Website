<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/Contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-11">
                <h1>East Coast Jeeps Policy</h1>
                <br />
                <p>Shipping Policy: East Coast Jeep's standard shipping includes one of the following shipping methods:
                    USPS, UPS Ground, and UPS Next Day Delivery<br />
                    Orders placed by 1:00pm (EST) will be shipped the same day! <br /><br />
                   Return Policy: East Coast Jeep's wants to ensur that our customers are completely satisfied with their products.
                   If you are not completely satisfied with one of our products you may return it any time within 30 days of the date
                    of Sale for a hassle-free refund of the amount paid for the product. Refunds do not include shipping costs. On exchange
                    of defective products, Quadratec will pay for shipping on the outbound replacement product only. We only specify that the 
                    product not be damaged, missing components or manufacturer's documentation. Special order or non-stocking items are specifically 
                    exempted from this policy and will be assessed an appropriate re-stocking charge. Place your name and order number on the 
                    package for efficient identification. Please note that we do not pay the shipping charges involved in returning goods.
                </p>
                <br />
                <br />
                <br />
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 col-md-offset-1">
                <h1>Contact Us</h1>
                <br />
                <p>Please use the form below to contact us, and we will get back to you as soon as possible.</p>
                <br />
                <br />
                <br />
            </div>
        </div>
        <div class="row  background">
            <div class="col-md-12">
                <div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtFName" placeholder="First Name" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-user bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtLName" placeholder="Last Name" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-envelope-o bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtEmail" placeholder="Email Address" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-phone-square bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtPhone" placeholder="Phone" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="col-md-1 col-md-offset-1 text-center"><i class="fa fa-pencil-square-o bigicon"></i></span>
                            <div class="col-md-8">
                                <asp:TextBox ID="txtMessage" placeholder="Enter your massage for us here. We will get back to you within 2 business days."
                                    CssClass="form-control" runat="server" TextMode="MultiLine" Rows="7"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 text-center">
                                <asp:LinkButton ID="btnSubmit" CssClass="btn btn-primary btn-lg" runat="server" OnClick="btnSubmit_Click">Submit</asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
