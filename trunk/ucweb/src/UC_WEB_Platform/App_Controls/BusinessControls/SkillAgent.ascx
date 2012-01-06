﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SkillAgent.ascx.cs" Inherits="UcentrikWeb.App_Controls.BusinessControls.SkillAgent" %>

<asp:ObjectDataSource ID="objectdatasourceList" Runat="server"
    TypeName="UCENTRIK.LIB.BllProxy.BllProxySkillAgent"
    SelectMethod=""
    DeleteMethod=""
    OnSelected="dataSelected"
>
</asp:ObjectDataSource>

<table width="100%" height="100%" cellpadding="0" cellspacing="0" border="0">
    <tr height="25">
        <td align="left">
            Skill Agent management:&nbsp;
            <asp:Label ID="lblSkillName" runat="server"
                Text="">
            </asp:Label>
        </td>
    </tr>

    <tr height="15px">
        <td></td>
    </tr>    

    <tr height="25">
        <td align="left">
            <asp:Label ID="lblMessage" runat="server"
                Text="">
            </asp:Label>
        </td>
    </tr>

    <tr height="15px">
        <td></td>
    </tr>

    <tr>
        <td align="center" valign="top" colspan="2">
            <asp:GridView id="gvList" runat="server"
                DataKeyNames="agent_id, skill_id"
                OnRowCreated="gvList_RowCreated"
                OnRowEditing="gvList_RowEditing"
                OnRowDeleting="gvList_RowDeleting"
                >
                
                <columns>
                    <asp:boundfield datafield="full_name"
                        headertext="Agent" 
                        HeaderStyle-HorizontalAlign="Left"
                        readonly="true"
                        SortExpression="full_name"
                        />

                    <asp:TemplateField
                        ConvertEmptyStringToNull="true"
                        
                        HeaderText="In Skill"
                        HeaderStyle-HorizontalAlign="Center"
                        HeaderStyle-Wrap="false"
                        
                        ItemStyle-Width="50"
                        ItemStyle-Wrap="false"
                        ItemStyle-HorizontalAlign="Center"
                        
                        SortExpression="skill_id"
                        Visible="true"
                        >
                        <ItemTemplate>
                        
                            <asp:CheckBox ID="chkboxInSkill" runat="server"
                                Enabled="false"
                                Checked='<%# !(Eval("skill_id") is System.DBNull) %>'
                            />
                            
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:CommandField 
                        HeaderText="Command"
                        ShowHeader="True"
                        HeaderStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50"
                        ItemStyle-Wrap="false"
                        ItemStyle-HorizontalAlign="Center"
                        
                        ShowCancelButton="false"
                        ShowEditButton="true"
                        ShowDeleteButton="true"
                        
                        EditText="Add"
                        DeleteText="Remove"
                        />
                </columns>
            </asp:GridView>
        </td>
    </tr>
    
    <tr>
        <td>
            <br />
        </td>
    </tr>

    <tr height="15px">
        <td></td>
    </tr>

	<tr>
		<td valign="bottom" class="separator">
            <table width="100%" height="100%" align="center" cellSpacing="2" cellPadding="0" border="0">
	            <tr>
	                <td width="5px"></td>
                    
                    <td align="left">
                        <asp:Button ID="btnBack" runat="server" 
                            Text="BACK"

                    Width="100px"
                    Height="24px"
                    CssClass="UcButton"

                            UseSubmitBehavior="false"
                            OnClick="btnBack_Click"
                            />
                    </td>
                    
                    <td align="right">
                    </td>
                    
                    <td width="5px"></td>
	            </tr>
            </table>
		</td>
	</tr>
</table>