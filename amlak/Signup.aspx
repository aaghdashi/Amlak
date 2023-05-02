<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="amlak.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: small; font-family: tahoma, arial; color: #333333; min-height:400px; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
   
                        <div align="right" dir="rtl" style="font-family: tahoma, arial; font-style: normal;
                            width: 220px; height: 500px; background-color: #6681BA; right: 0px; top: 0px;
                            float: right; text-decoration: none; text-align: right; vertical-align: middle;
                            font-size: small; position: static;">
                                                        <br />
                            <br />
                            کاربر گرامی قبل از ثبت نام رعایت نکات
                            <br />
                            زیر ضروری است.<br />
                            <br />
                            <br />
                            <span style="color: red">*</span> پر کردن فیلدهایی از قبیل نام کاربری،<br />
                            رمز عبور و ... الزامی است.<br />
                                                        <br />
                            <br />
                            <span style="color: red">*</span> رمز عبور شما شخصی می باشد ، از<br />
                            افشای آن بپرهیزید.<br />
                            <br />
                            <br />
                                                        <span style="color: red">*</span> وارد کردن فیلد های علامت دار اجباری<br />
                            می باشد.<br />
                        </div>
    <table style="width: auto; height: 600px;" align="center" dir="rtl">
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
               
                نام:</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Name" runat="server" Columns="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_name" runat="server" 
                    ControlToValidate="TextBox_Name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                نام خانوادگی:
            </td>
            <td align="right">
                <asp:TextBox ID="TextBox_Family" runat="server" Columns="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Family" runat="server" 
                    ControlToValidate="TextBox_Family" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                آدرس ایمیل :</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Email" runat="server" Columns="50" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                تکرار آدرس ایمیل :</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Confirm_Email" runat="server" Columns="50"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator_Email" runat="server" 
                    ControlToCompare="TextBox_Email" ControlToValidate="TextBox_Confirm_Email" 
                    ErrorMessage="آدرس پست الکترونیک شما معتبر نمی باشد." ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                تلفن :</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Telephone" runat="server" Columns="20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                آدرس محل زندگی:</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Address" runat="server" Columns="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                نام کاربری :</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Account_Name" runat="server" Columns="25"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Name_Account" 
                    runat="server" ControlToValidate="TextBox_Account_Name" ErrorMessage="*" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                رمز عبور :</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Password" runat="server" MaxLength="12" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_Pass" runat="server" 
                    ControlToValidate="TextBox_Password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium">
                تکرار رمز عبور :</td>
            <td align="right">
                <asp:TextBox ID="TextBox_Confirm_Password" runat="server" MaxLength="12" 
                    TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox_Password" 
                    ControlToValidate="TextBox_Confirm_Password" 
                    ErrorMessage="لطفا در وارد نمودن رمز عبور خود دقت فر مایید ." ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td align="center" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium" colspan="2">
                <asp:Button ID="Button_Submit" runat="server" Font-Names="Tahoma" 
                    Text="ثبت اطلاعات" onclick="Button_Submit_Click" />
                <input id="Reset1" style="font-family: Tahoma" type="reset" value="تصحیح" /></td>
        </tr>
        <tr>
            <td align="center" dir="rtl" 
                style="font-family: tahoma, arial; font-size: medium" colspan="2">
                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
    </div>
</asp:Content>
