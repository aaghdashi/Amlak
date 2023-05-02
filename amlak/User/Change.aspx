<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Change.aspx.cs" Inherits="amlak.User.Change" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
    <br />
    <hr style="color: #99CCFF; font-size: medium;" />
    <p><span class="style1">*</span> کاربر گرامی در صورتی که میخواهید رمز عبور خود را 
        تغییر دهید بعد از وارد کردن رمز عبور قبلی و اطمینان از صحت اطلاعات وارد شده بر روی 
        دکمه تغییر رمز کلیک کنید.</p>
       <hr style="color: #99CCFF; font-size: medium;" />
     </div>
     <div style="font-size: small; font-family: tahoma, arial; color: #333333; min-height:300px; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
         <table style="width:100%;">
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="left" dir="rtl">
                     &nbsp;</td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="left" dir="rtl">
                     رمز عبور قبلی :</td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_pass_pre" runat="server" MaxLength="12" 
                         TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                         ControlToValidate="TextBox_pass_pre" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="left" dir="rtl">
                     رمز عبور جدید :</td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_pass_new" runat="server" MaxLength="12" 
                         TextMode="Password"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                         ControlToValidate="TextBox_pass_new" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="left" dir="rtl">
                     تکرار رمز عبور جدید :
                 </td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_new_pass_confirm" runat="server" MaxLength="12" 
                         TextMode="Password"></asp:TextBox>
                     <asp:CompareValidator ID="CompareValidator1" runat="server" 
                         ControlToCompare="TextBox_pass_new" 
                         ControlToValidate="TextBox_new_pass_confirm" 
                         ErrorMessage="تکرار روز عبور با رمز عبور جدید مطابقت ندارد." ForeColor="Red"></asp:CompareValidator>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td colspan="4">
                         <hr style="color: #99CCFF; font-size: medium;" />
    </td>
             </tr>
             <tr>
                 <td align="center" colspan="4">
                     <asp:Button ID="Button_return" runat="server" Font-Names="Tahoma" 
                         Text="بازگشت به صحفه اصلی" onclick="Button_return_Click" />
                     <asp:Button ID="Button_Change_pass" runat="server" Font-Names="Tahoma" 
                         onclick="Button_Change_pass_Click" Text="ثبت اطلاعات" />
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="center" dir="rtl" colspan="2">
                     <asp:Literal ID="Literal_change_password" runat="server"></asp:Literal>
                 </td>
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
                 <td align="left" dir="rtl">
                     &nbsp;</td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>

</asp:Content>
