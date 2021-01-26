<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="popupControlExtender_ajax_control.WebForm1" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>




            <table class="auto-style1">
                <tr>
                    <td>enter your univercity</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Button ID="Button1" runat="server" Text="save" OnClick="Button1_Click" />
                                <br />
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
            </table>




        </div>



        <ajaxToolkit:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="TextBox1" PopupControlID="Panel1" Position="Bottom" CommitProperty="value"></ajaxToolkit:PopupControlExtender>
  



                <asp:Panel ID="Panel1" runat="server" BackColor="#CCFFFF">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                        <asp:ListItem>Guru Nanak Dev University</asp:ListItem>
                        <asp:ListItem>Punjab Technical University</asp:ListItem>
                        <asp:ListItem>Lovely Professional University</asp:ListItem>
                        <asp:ListItem>Punjabi University</asp:ListItem>
                        <asp:ListItem>Chandigarh University</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />

        </asp:Panel>







    </form>
</body>
</html>
