<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Show_User.aspx.cs" Inherits="amlak.Admin.Show_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    .style2
    {
        font-size: medium;
        color: white;
        font-weight: bold;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
    <br />
    <hr style="color: #99CCFF; font-size: medium;" />
    <p><span class="style1">*</span> مدیر گرامی در صورتی که میخواهید اطلاعات کاملی 
        افرادی را که به عضویت درآمده اند را مشاهده کنید، بر روی 
        مشاهده اطلاعات کلیک کنید.</p>
       
        
       <hr style="color: #99CCFF; font-size: medium;" />
      <div dir="rtl" align="center">
           <asp:MultiView ID="MultiView_user" runat="server" ActiveViewIndex="0">
               <asp:View ID="View_grid_user" runat="server">
               <div dir="rtl" align="center">

                   <asp:GridView ID="GridView_show_user" runat="server" AllowPaging="True" 
                       AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                       DataSourceID="SqlDataSource_show_user" ForeColor="#333333" GridLines="None" 
                       onselectedindexchanged="GridView_show_user_SelectedIndexChanged" 
                       Width="100%" onrowdatabound="GridView_show_user_RowDataBound">
                       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                       <Columns>
                           <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                               ReadOnly="True" SortExpression="ID" Visible="False" />
                           <asp:BoundField DataField="name" HeaderText="نام" SortExpression="name" />
                           <asp:BoundField DataField="family" HeaderText="نام کاربری" 
                               SortExpression="family" />
                           <asp:BoundField DataField="e_mail" HeaderText="ایمیل" SortExpression="e_mail" />
                           <asp:BoundField DataField="telephone" HeaderText="تلفن" 
                               SortExpression="telephone" />
                           <asp:BoundField DataField="account_name" HeaderText="نام کاربری" 
                               SortExpression="account_name" />
                           <asp:TemplateField HeaderText="تاریخ عضویت">
                               <ItemTemplate>
                                   <asp:Label ID="Label_date" runat="server" Text='<%# Eval("date_signup") %>'></asp:Label>
                               </ItemTemplate>
                           </asp:TemplateField>
                           <asp:CommandField SelectText="مشاهده اطلاعات" ShowSelectButton="True">
                           <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                           </asp:CommandField>
                       </Columns>
                       <EditRowStyle BackColor="#999999" />
                       <EmptyDataTemplate>
                           هیچ کاربری ثبت نام نکرده است.
                       </EmptyDataTemplate>
                       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#5D7B9D" Font-Bold="False" Font-Size="X-Small" 
                           ForeColor="White" />
                       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                       <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#E9E7E2" />
                       <SortedAscendingHeaderStyle BackColor="#506C8C" />
                       <SortedDescendingCellStyle BackColor="#FFFDF8" />
                       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                   </asp:GridView>

                   <asp:SqlDataSource ID="SqlDataSource_show_user" runat="server" 
                       ConnectionString="<%$ ConnectionStrings:Amlak %>" 
                       SelectCommand="SELECT [ID], [name], [family], [e_mail], [telephone], [account_name], [date_signup] FROM [Member]">
                   </asp:SqlDataSource>

               </div>
               </asp:View>
               <asp:View ID="View_info_user" runat="server">
               <div dir="rtl" align="center">
                   <table style="width:100%;">
                       <tr>
                           <td align="center" class="style2" colspan="4">
                               نمایش کامل اطلاعات کاربر عضو</td>
                       </tr>
                       <tr>
                           <td colspan="4">
                               <hr style="color: #99CCFF; font-size: medium;" />
                           </td>
                       </tr>
                       <tr>
                           <td align="left" dir="rtl">
                               نام:</td>
                           <td align="right" dir="rtl">
                               <asp:Label ID="Label_Name" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td align="left" dir="rtl">
                               نام خانوادگی:</td>
                           <td align="right" dir="rtl">
                               <asp:Label ID="Label_family" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td align="left" dir="rtl">
                               نام کاربری:</td>
                           <td align="right" dir="rtl">
                               <asp:Label ID="Label_username" runat="server" Text="Label"></asp:Label>
                           </td>
                           <td align="left" dir="rtl">
                               تلفن :</td>
                           <td align="right" dir="rtl">
                               <asp:Label ID="Label_telephone" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td align="left" dir="rtl">
                               ایمیل :</td>
                           <td align="right" colspan="3" dir="rtl">
                               <asp:Label ID="Label_email" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td align="left" dir="rtl">
                               تاریخ عضویت :</td>
                           <td align="right" colspan="3" dir="rtl">
                               <asp:Label ID="Label_date" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td align="left" dir="rtl">
                               آدرس :</td>
                           <td align="right" colspan="3" dir="rtl">
                               <asp:Label ID="Label_address" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td align="left" dir="rtl">
                               توضیحات :</td>
                           <td align="right" colspan="3" dir="rtl">
                               <asp:Label ID="Label_description" runat="server" Text="Label"></asp:Label>
                           </td>
                       </tr>
                       <tr>
                           <td align="left" colspan="4" dir="rtl">
                               <hr style="color: #99CCFF; font-size: medium;" />
                           </td>
                       </tr>
                       <tr>
                           <td align="center" colspan="4" dir="rtl">
                               <asp:Button ID="Button_return" runat="server" Font-Names="Tahoma" 
                                   onclick="Button_return_Click" Text="بازگشت" />
                           </td>
                       </tr>
                   </table>
               </div>
               </asp:View>
           </asp:MultiView>
       </div>
     </div>
</asp:Content>
