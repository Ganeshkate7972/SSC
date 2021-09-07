<%@ Page Title="" Language="C#" MasterPageFile="~/Besic_Master/EditMaster.Master" AutoEventWireup="true" CodeBehind="AddBord.aspx.cs" Inherits="SSC.Besic_Master.AddBord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="height: 90vh">
        <div class="row h-100 justify-content-center align-items-center">
            <div class="form-row  align-items-center">
                <div class="card text-white bg-dark mb-3">
                    <div class="card-header">Add Bord</div>
                    <div class="row card-body">
                        <div class="col-auto">
                            <label for="inlineFormInput">Name</label>
                        </div>
                        <div class="col-auto">
                            <input type="text" class="form-control mb-2" id="inlineFormInput" placeholder="Name">
                        </div>
                        <div class="col-auto">
                            <button type="submit" class="btn btn-primary mb-2">Submit</button>
                        </div>
                        <div class="col-auto">
                            <button type="button" class="btn btn-primary mb-2">Back</button>
                        </div>
                        <div class="col-auto">
                            <button type="reset" class="btn btn-primary mb-2">Reset</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
