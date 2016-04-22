<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterPage.master" AutoEventWireup="true" CodeFile="DefaultError.aspx.cs" Inherits="DefaultError" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <h1 style="color: red;">
                    HTTP Error: A generic HTTP error has occurred. Oops!
                </h1>
            </div>
        </div>
    </div>
</asp:Content>

