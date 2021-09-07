<%@ Page Title="" Language="C#" MasterPageFile="~/Besic_Master/Besic.Master" AutoEventWireup="true" CodeBehind="BordList.aspx.cs" Inherits="SSC.Besic_Master.BordList" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrapper">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="fresh-table full-color-orange">
                        <div class="toolbar">
                            <%--<button id="alertBtn" class="btn btn-default">Alert</button>--%>
                            <asp:Button ID="Button1" runat="server"  CssClass="btn btn-default" Text="Add" />
                        </div>
                        <table id="fresh-table" class="table">
                            <thead>
                                <th data-field="id">SNo</th>
                                <th data-field="name" data-sortable="true">Name</th>
                                <th data-field="city">Active Or Not</th>
                                <th data-field="actions">Edit Add Delete</th>
                                <%--<th data-field="actions" data-formatter="operateFormatter" data-events="operateEvents">Actions</th>--%>
                            </thead>
                            <tbody>

                                <%=getWhileLoopData()%>
                              
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="fixed-plugin" style="top: 300px">
        <div class="dropdown ">
            <a href="#" data-toggle="dropdown">
                <i class="fa fa-cog fa-2x"></i>
            </a>
            <ul class="dropdown-menu">
                <li class="header-title">Adjustments</li>
                <li class="adjustments-line">
                    <a href="javascript:void(0)" class="switch-trigger">
                        <p>Full Background</p>
                        <div class="switch"
                            data-on-label="ON"
                            data-off-label="OFF">
                            <input type="checkbox" checked data-target="section-header" data-type="parallax" />
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </li>
                <li class="adjustments-line">
                    <a href="javascript:void(0)" class="switch-trigger">
                        <p>Colors</p>
                        <div class="pull-right">
                            <span class="badge filter badge-blue" data-color="blue"></span>
                            <span class="badge filter badge-azure" data-color="azure"></span>
                            <span class="badge filter badge-green" data-color="green"></span>
                            <span class="badge filter badge-orange active" data-color="orange"></span>
                            <span class="badge filter badge-red" data-color="red"></span>
                        </div>
                        <div class="clearfix"></div>
                    </a>
                </li>

            </ul>
        </div>
    </div>


</asp:Content>
