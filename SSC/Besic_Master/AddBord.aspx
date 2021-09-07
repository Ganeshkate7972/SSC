<%@ Page Title="" Language="C#" MasterPageFile="~/Besic_Master/EditMaster.Master" AutoEventWireup="true" CodeBehind="AddBord.aspx.cs" Inherits="SSC.Besic_Master.AddBord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height:90vh">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="form-row align-items-center">
                <div class="col-auto">
                    <label for="inlineFormInput">Name</label>
                </div>
                <div class="col-auto">
                    <input type="text" class="form-control mb-2" id="inlineFormInput" placeholder="Jane Doe">
                </div>
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary mb-2">Submit</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
