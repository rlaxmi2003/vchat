﻿<%@ Page Title="" Language="C#" MasterPageFile="~/UcMasterPage.Master" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="UcentrikWeb.dirApp.error" %>
<%@ Register TagPrefix="ucentrik" TagName="Title" Src="../App_Controls/CommonControls/PageTitle.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ControlsPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    <ucentrik:Title ID="Title1" runat="server" Title="Application error" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="OperatingPlaceHolder" runat="server">
    <table width="100%" height="480px" cellpadding="0" cellspacing="0" border="0">
        <tr>
            <td align="center" Class="ErrorMessage">
            
                APPLICATION ERROR
                
            </td>
        </tr>
        <tr>
            <td align="center">
            
                <asp:Label ID="lblCode" runat="server"
                    Text=""
                    CssClass="ErrorMessage"
                >
                </asp:Label>
                
            </td>
        </tr>
    </table>
</asp:Content>
