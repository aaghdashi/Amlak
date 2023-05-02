<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="amlak.User.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div style="font-size: small; font-family: tahoma, arial; color: #333333; min-height:400px; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
    <hr style="color: #99CCFF; font-size: medium;" />

<p><span class="style1">*</span> کاربر گرامی در صورتی که میخواهید ملک خود را در این سایت ثبت کنید بایستی 
    به بخش ثبت ملک مراجعه فرمایید و در آنجا&nbsp; مشخصات ملک خود را وارد کنید و در 
    صورت صحیح بودن اطلاعات وارد شده ملک شما در این سایت به نمایش گذاشته می شود.</p>
     <p>&nbsp;</p>
<p><span class="style1">*</span>برای مشاهده کلیه املاک واگذار شده خود در این سایت بر روی&nbsp; 
    ویرایش ملک&nbsp; کلیک کنید، در این بخش امکان ویرایش املاک واگذار شده نیز وجود 
    دارد.</p>
     <p>&nbsp;</p>
<p><span class="style1">*</span> در قسمت ویرایش اطلاعات کاربری امکان ویرایش اطلاعات 
    حساب کاربری شما وجود دارد.</p>
     <p>&nbsp;</p>
    <p><span class="style1">*</span> برای تغییر رمز عبور خود به بخش تغییر رمز مراجعه 
        فرمایید.</p>

<hr style="color: #99CCFF; font-size: medium;" />
</div>

 <div style="font-size: small; font-family: tahoma, arial; color: #333333; min-height:200px; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
     <table style="width: 50%;" align="center" dir="rtl">
         <tr>
             <td align="left" dir="rtl">
                 &nbsp;
             </td>
             <td align="right" dir="rtl">
                 &nbsp;
             </td>
         </tr>
         <tr>
             <td align="left" dir="rtl">
                 امروز:&nbsp;
             </td>
             <td align="right" dir="rtl">
                 &nbsp;
                 <asp:Label ID="Label_Date" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td align="left" dir="rtl">
                 مصادف با:&nbsp;
             </td>
             <td align="right" dir="rtl">
                 &nbsp;
                 <asp:Label ID="Label_Date2" runat="server" Text="Label"></asp:Label>
             </td>
         </tr>
         <tr>
             <td align="left" dir="rtl">
                 &nbsp;</td>
             <td align="right" dir="rtl">
                 &nbsp;</td>
         </tr>
     </table>
    </div>
</asp:Content>
