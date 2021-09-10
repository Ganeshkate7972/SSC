<%@ Page Title="" Language="C#" MasterPageFile="~/Besic_Master/EditMaster.Master" AutoEventWireup="true" CodeBehind="AddSubcitylists.aspx.cs" Inherits="SSC.Besic_Master.AddSubcitylists" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
        <div class="container" style="height: 76vh">
            <div class="row h-100 justify-content-center align-items-center">
                <div class="form-row  align-items-center">
                    <div class="card text-white bg-dark mb-3">
                        <div class="card-header">
                            <asp:Label ID="Label1" runat="server" Text="Add Sub City"></asp:Label>
                        </div>
                        <div class="row card-body">
                            <div class="col-auto">
                                <label for="Name">Select City</label>
                            </div>
                            <div class="col-auto">
                                <asp:DropDownList ID="City" runat="server" class="form-control mb-2" required ></asp:DropDownList>
                                <%--<asp:TextBox class="form-control mb-2" required placeholder="Name" ID="TextBox1" runat="server"></asp:TextBox>--%>
                            </div>
                            <div class="col-auto">
                                <label for="Name">Name</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox class="form-control mb-2" required placeholder="Name" ID="Name" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-auto">
                                <asp:Label ID="Label2" runat="server" Visible="false">
                                    <label class="btn btn-primary abcd" runat="server">
                                        <asp:CheckBox ID="CheckBox1" CssClass="mng" runat="server" />
                                    </label>
                                </asp:Label>
                                <style>
                                    .abcd::after {
                                        content: "Active";
                                    }

                                    .mng {
                                        opacity: .5;
                                    }
                                </style>
                            </div>
                            <div class="col-auto">
                                <asp:Button ID="Button1" class="btn btn-primary mb-2" runat="server" OnClick="Button1_Click" Text="Submit" />
                            </div>
                            <div class="col-auto">
                                <a href="SubcityLists.aspx" class="btn btn-primary mb-2">Back</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


</asp:Content>
