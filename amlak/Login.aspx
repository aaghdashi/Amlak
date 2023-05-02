<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="amlak.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
 <div style="width: 960px; font-family: tahoma, arial; background-color: #6681BA;" dir="rtl">
         <asp:MultiView ID="MultiView_Login" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View_Login" runat="server">
<table dir="rtl" style="width: 370px; height: 340px;" align="center">
                                        <tr>
                                            <td colspan="2" style="font-size: small; height: 58px">
                                                <p style="font-size: small">
                                                    <span  style="color: #FF0000; ">*</span> کاربر گرامی در وارد 
                                        کردن اطلاعات دقت فرمایید.</p>
                                                <p style="height: 40px">
                                                    <span style="color: #FF0000">*</span> <span style="font-size: small">چنانچه نام&nbsp; کاربری و یا 
                                        رمز عبور خود را فراموش کرده اید، می توانید با جواب دادن به سوالات امنیتی که خود 
                                        آن را تعریف کرده اید رمز عبور&nbsp; و نام کاربری خود را دریافت کنید.</span></p>
<hr style="color: #99CCFF; font-size: medium;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="" colspan="2" dir="rtl" style="height: 20px; vertical-align: middle;
                                        text-align: right; font-family: tahoma, arial; font-size: small;">
                                                <asp:RadioButtonList ID="RadioButtonList_member" runat="server" 
                                                    RepeatDirection="Horizontal">
                                                    <asp:ListItem Selected="True" Value="0">کاربر عضو</asp:ListItem>
                                                    <asp:ListItem Value="1">مدیر سایت</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <hr style="color: #99CCFF; font-size: medium;" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="" dir="rtl" style="height: 20px; width: 150px; vertical-align: middle;
                                        text-align: left; font-family: tahoma, arial; font-size: small;">
                                                نام کاربری:
                                            </td>
                                            <td align="right" class="" dir="ltr" 
                                    style="height: 20px; vertical-align: middle;
                                        text-align: right; font-family: tahoma, arial; font-size: small; width: 180px;">
                                                <asp:TextBox ID="TextBox_Account_Name" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" dir="rtl" style="height: 20px; vertical-align: middle; text-align: left;
                                        font-family: tahoma, arial; font-size: small; width: 150px;">
                                                رمز عبور:
                                            </td>
                                            <td align="right" dir="ltr" style="height: 20px; vertical-align: middle; text-align: right;
                                        font-family: tahoma, arial; font-size: small; width: 180px;">
                                                <asp:TextBox ID="TextBox_Password" runat="server" MaxLength="12" 
                                                    TextMode="Password"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 21px">
                                                <hr style="color: #99CCFF; font-size: medium;" />
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="" colspan="2" dir="rtl" 
                                    style="height: 17px">
                                                <asp:Button ID="Button_Login" runat="server" Font-Names="Tahoma" Text="ورود" 
                                                    onclick="Button_Login_Click" />
                                                <asp:Button ID="Button_signup" runat="server" Font-Names="Tahoma" 
                                                    onclick="Button_signup_Click" Text="عضویت" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="" colspan="2" dir="rtl" style="height: 17px">
                                                <hr style="color: #99CCFF; font-size: medium;" />
                                                <br />
                                                <asp:Literal ID="Literal_Login_state" runat="server" ></asp:Literal>
                                                <br />
                                                <asp:LinkButton ID="LinkButton4" runat="server" Font-Names="Tahoma" 
                                                    Font-Size="X-Small" onclick="LinkButton4_Click" >رمز عبور و نام کاربری خود را فراموش کرده ام</asp:LinkButton>
                                            </td>
                                        </tr>
                                    </table>
                                    </asp:View>

                    
                    
                               <asp:View ID="View_Recovery" runat="server">
                                <div style="width: 960px; font-family: tahoma, arial; background-color: #6681BA;" dir="rtl">

                        <table 
                
                            style="width: 960px; font-family: Tahoma, arial;">
                            <tr>
                                <td colspan="3">
                                    <hr />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 291px; height: 113px">
                                </td>
                                <td style="height: 113px; width: 340px">
                                    <table dir="rtl" style="width: 370px; height: 340px;">
                                        <tr>
                                            <td colspan="2" style="font-size: small; height: 58px">
                                                <p>
                                                    <span style="color: #FF0000">*</span> کاربر گرامی در وارد 
                                        کردن اطلاعات دقت فرمایید.</p>
                                                <p style="font-size: x-small">
                                                    <span style="color: #FF0000">*</span>&nbsp; با وارد کردن نام 
                                        کاربری ، سوال امنیتی و جواب آن می توانید رمز عبور خود را بازیابی نماییدو به صورت 
                                        مجدد از حساب کاربری خود استفاده نمایید.</p>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="" colspan="2" dir="rtl" style="height: 20px; vertical-align: middle;
                                        text-align: left; font-family: tahoma, arial; font-size: small;">
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right" class="" dir="rtl" style="height: 20px; vertical-align: middle;
                                        text-align: right; font-family: tahoma, arial; font-size: small;" colspan="2">
                                                <asp:RadioButtonList ID="RadioButtonList_Recovry_Password" runat="server" 
                                                    RepeatDirection="Horizontal">
                                                    <asp:ListItem Value="0">کاربر عضو </asp:ListItem>
                                                    <asp:ListItem Value="1">مدیر گروه</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="" dir="rtl" style="height: 20px; width: 150px; vertical-align: middle;
                                        text-align: left; font-family: tahoma, arial; font-size: small;">
                                                نام کاربری:
                                            </td>
                                            <td align="right" class="" dir="ltr" style="height: 20px; vertical-align: middle;
                                        text-align: right; font-family: tahoma, arial; font-size: small; width: 260px;">
                                                
                                                <asp:TextBox ID="TextBox_rec_username" runat="server"></asp:TextBox>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" dir="rtl" style="height: 20px; vertical-align: middle; text-align: left;
                                        font-family: tahoma, arial; font-size: small; width: 150px;">
                                                سوال امنیتی :
                                            </td>
                                            <td align="right" dir="ltr" style="height: 20px; vertical-align: middle; text-align: right;
                                        font-family: tahoma, arial; font-size: small; width: 260px;">
                                               
                                                <asp:TextBox ID="TextBox_rec_ques" runat="server"></asp:TextBox>
                                               
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" dir="rtl" style="height: 20px; vertical-align: middle; text-align: left;
                                        font-family: tahoma, arial; font-size: small; width: 150px;">
                                                جواب سوال :
                                            </td>
                                            <td align="right" dir="ltr" style="height: 20px; vertical-align: middle; text-align: right;
                                        font-family: tahoma, arial; font-size: small; width: 260px;">
                                                
                                                <asp:TextBox ID="TextBox_rec_answ" runat="server"></asp:TextBox>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="" colspan="2" dir="rtl" 
                                    style="height: 17px">
                                                <hr />
                                                <asp:Button ID="Button_submit" runat="server" Font-Names="Tahoma" 
                                                    Font-Size="Medium" onclick="Button_submit_Click" Text="تایید" />
                                                <br />
                                                <hr />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" class="" colspan="2" dir="rtl" 
                                    style="height: 17px">
                                                <asp:Literal ID="Literal_Recovery_userpass" runat="server" Mode="PassThrough" 
                                                    ViewStateMode="Disabled"></asp:Literal>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td style="height: 113px">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 291px">
                                    &nbsp;
                                </td>
                                <td align="center" dir="rtl" style="width: 347px">
                                    <asp:LinkButton ID="LinkButton3" runat="server" 
                            Font-Names="Tahoma" Font-Size="X-Small" OnClick="LinkButton3_Click">بازگشت به صحفه ورود اعضا</asp:LinkButton>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                        </div>
                    </asp:View>

                                    </asp:MultiView>
                                    </div>
                                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
