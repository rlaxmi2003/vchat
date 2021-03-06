﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Skill.ascx.cs" Inherits="UCENTRIK.WEB.PLATFORM.App_Controls.BusinessControls.Skill" %>

<%@ Register TagPrefix="ucentrik" TagName="SkillProfile" Src="SkillProfile.ascx" %>

<asp:ObjectDataSource ID="objectdatasourceList" Runat="server"
    TypeName="UCENTRIK.LIB.BllProxy.BllProxySkill"
    SelectMethod=""
    DeleteMethod="DeleteSkill"
    OnSelected="dataSelected"
    >
</asp:ObjectDataSource>

<asp:MultiView ID="mvControl" runat="server" ActiveViewIndex="0">
    <asp:View ID="viewList" runat="server">
        <table width="100%" cellpadding="0" cellspacing="0" border="0">

            <tr height="25">
                <td align="left" colspan="2">
                    <asp:Label ID="lblMessage" runat="server"
                        Text="">
                    </asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                </td>
            </tr>

            
            <tr>
                <td align="left">
                    
                </td>
                <td align="right">
                    Skills:&nbsp;
                    <asp:Label ID="lblCount" runat="server"
                        Text="">
                    </asp:Label>

                </td>
            </tr>


            <tr>
                <td colspan="2">
                    <br />
                </td>
            </tr>

            
            <tr>
                <td colspan="2">
                    <asp:PlaceHolder ID="phControls" runat="server">
                    </asp:PlaceHolder>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <br />
                    <br />
                </td>
            </tr>

            <tr>
                <td align="center" colspan="2">
                
                    <asp:GridView id="gvList" runat="server"
                        DataKeyNames="skill_id"
                        OnRowEditing="gvList_RowEditing" 
                        >
                        
                        <columns>

                            <asp:TemplateField
                                ConvertEmptyStringToNull="true"
                                HeaderText="Skill"
                                HeaderStyle-HorizontalAlign="Left"
                                SortExpression="skill_name"
                                Visible="true"
                                >
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbFacilityB" runat="server"
                                        CommandArgument='<%# Eval("skill_id")%>'
                                        onclick="lbSkill_Click"
                                    >
                                        <%# Eval("skill_name")%>
                                    </asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:boundfield datafield="skill_name"
                                headertext="Skill" 
                                HeaderStyle-HorizontalAlign="Left"
                                readonly="true"
                                SortExpression="skill_name"
                                />
                            
                            <asp:BoundField DataField="agent_cnt"
                                HeaderText="Agents" 
                                HeaderStyle-HorizontalAlign="Center"
                                HeaderStyle-Wrap="false"
                                HeaderStyle-Width="100"

                                ItemStyle-Width="100"
                                ItemStyle-Wrap="false"
                                ItemStyle-HorizontalAlign="Center"
                                
                                ReadOnly="true"
                                SortExpression="agent_cnt"
                                />
                                        
                            <asp:CommandField 
                                HeaderText="Command"
                                ShowHeader="True"
                                
                                HeaderStyle-HorizontalAlign="Center"
                                HeaderStyle-Width="50"
                                
                                ItemStyle-Width="50"
                                ItemStyle-Wrap="false"
                                ItemStyle-HorizontalAlign="Center"
                                
                                ShowCancelButton="false"
                                ShowEditButton="true"
                                ShowDeleteButton="true"
                                EditText="Edit"
                                DeleteText="Delete"
                                />
                        </columns>
                    </asp:GridView>
                
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <br />
                    <br />
                </td>
            </tr>

            <asp:Panel ID="pnlAdd" runat="server" Visible="false">
            <tr>
                <td align="left">
                </td>
                <td align="right">
                    <asp:Button ID="btnAdd" runat="server" 
                        Text="Add"

                    Width="100px"
                    Height="24px"
                    CssClass="UcButton"

                        onclick="btnAdd_Click"
                        />
                </td>
            </tr>
            </asp:Panel>

        </table>
    </asp:View>
    
    
    <asp:View ID="viewEdit" runat="server">
            
        <table width="100%" height="100%" cellpadding="0" cellspacing="0" border="0">
            <tr>
                <td valign="top">
                    <ucentrik:SkillProfile ID="profileControl" runat="server"
                    
                        OnManageAgents="Skill_ManageAgents"
                    
                        OnProfileSaveButton="viewEdit_Save"
                        OnProfileBackButton="viewEdit_Back"
                    />
                </td>
            </tr>
        </table>            
        
    
    
    </asp:View>

</asp:MultiView>