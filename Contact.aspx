<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="CSS/Contact.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid">
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
