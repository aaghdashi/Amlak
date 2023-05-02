<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="amlak.User.Edit" %>
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
    <p><span class="style1">*</span> کاربر گرامی در صورتی که میخواهید اطلاعات خود را 
        ویرایش کنید بعد از وارد کردن داده ها و اطمینان از صحت اطلاعات وارد شده بر روی 
        دکمه ویرایش اطلاعات کلیک کنید.</p>
       <hr style="color: #99CCFF; font-size: medium;" />
     </div>
     <div style="font-size: small; font-family: tahoma, arial; color: #333333; min-height:300px; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
         <table style="width: 75%; min-height :400px; height:400px; vertical-align:top" 
             dir="rtl" align="center">
             <tr>
                 <td align="left" dir="rtl">
                     &nbsp;
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
                 <td align="left" dir="rtl">
                     &nbsp;
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;
                 </td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     نام:</td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>
                 </td>
                 <td align="left" dir="rtl">
                     نام خانوادگی :</td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_family" runat="server"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     نام کاربری :</td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_name_account" runat="server"></asp:TextBox>
                 </td>
                 <td align="left" dir="rtl">
                     شماره تماس:</td>
                 <td align="right" dir="rtl">
                     <asp:TextBox ID="TextBox_telephone" runat="server" MaxLength="14"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     آدرس ایمیل:&nbsp;
                 </td>
                 <td align="right" colspan="2" dir="rtl">
                     <asp:TextBox ID="TextBox_email" runat="server" MaxLength="80" Width="300px"></asp:TextBox>
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;
                 </td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     آدرس :&nbsp;
                 </td>
                 <td align="right" colspan="2" dir="rtl">
                     <asp:TextBox ID="TextBox_address" runat="server" Width="300px"></asp:TextBox>
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;
                 </td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     سوال امنیتی:</td>
                 <td align="right" colspan="2" dir="rtl">
                     <asp:TextBox ID="TextBox_sec_question" runat="server" Width="300px"></asp:TextBox>
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     جواب سوال:</td>
                 <td align="right" colspan="2" dir="rtl">
                     <asp:TextBox ID="TextBox_sec_answer" runat="server" Width="300px"></asp:TextBox>
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     توضیحات :</td>
                 <td align="right" colspan="2" dir="rtl">
                     <asp:TextBox ID="TextBox_description" runat="server" 
                         Width="350px" Height="80px" Rows="3"></asp:TextBox>
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td align="left" dir="rtl">
                     &nbsp;</td>
                 <td align="center" colspan="2" dir="rtl">
                     <asp:Button ID="Button_Cancel" runat="server" Font-Names="Tahoma" 
                         Text="بازگشت به صفحه اصلی" onclick="Button_Cancel_Click" />
                     <asp:Button ID="Button_Edit" runat="server" Font-Names="Tahoma" 
                         Text="ثبت اطلاعات" onclick="Button_Edit_Click" />
                 </td>
                 <td align="right" dir="rtl">
                     &nbsp;</td>
             </tr>
             <tr>
                 <td align="center" dir="rtl" colspan="4">
                     <asp:Literal ID="Literal_Edit" runat="server"></asp:Literal>
                 </td>
             </tr>
         </table>
    </div>
</asp:Content>
