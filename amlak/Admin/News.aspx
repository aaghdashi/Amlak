<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="amlak.Admin.News" %>
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
    <p><span class="style1">*</span> مدیر گرامی در صورتی که میخواهید اخبار جدید خود را 
        وارد کنید بر روی درج اخبار جدید کلیک کنید و بعد از تعیین عنوان خبر ، متن خبر و اطمینان از صحت اطلاعات وارد شده بر روی 
        دکمه ثبت اطلاعات کلیک کنید.</p>
        <p><span class="style1">*</span> کاربر گرامی در صورتی که می خواهید اخبار به ثبت 
            رسیده را مشاهده کنید بر روی نمایش اخبار به ثبت رسیده کلیک کنید ، همچنین می 
            توانید اخبار را&nbsp; از لیست نمایش حذف کنید.</p>
    <p>&nbsp;</p>
            </div>
            <div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="center">
                <asp:LinkButton ID="LinkButton_insert" runat="server" 
                    onclick="LinkButton_insert_Click">درج اخبار جدید</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton_show" runat="server" 
                    onclick="LinkButton_show_Click">نمایش اخبار به ثبت رسیده</asp:LinkButton>          
                 <hr style="color: #99CCFF; font-size: medium;" />
                <asp:MultiView ID="MultiView_news" runat="server">
                    <asp:View ID="View_insert" runat="server">
                    <div dir="rtl" align="center">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="2" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> مدیر گرامی در این بخش از سایت 
                                شما می توانید اخبار مورد نظر خود را با توجه به گزینه های مورد نظر وارد کنید ، در 
                                توارد کردن اطلاعات دقت فرمایید .<br /> <br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                عنوان خبر :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_title" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                متن خبر :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_content" runat="server" Height="100px" Rows="3" 
                                    Width="500px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="2">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000;" 
                                colspan="2">
                                <asp:Button ID="Button_insert" runat="server" Font-Names="Tahoma" 
                                    onclick="Button_insert_Click" Text="ثبت اطلاعات" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000;" 
                                colspan="2">
                                <asp:Literal ID="Literal_insert" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                    </div>
                    </asp:View>
                    <asp:View ID="View_show" runat="server">
                    <div dir="rtl" align="center">
                        <asp:GridView ID="GridView_News" runat="server" AllowPaging="True" 
                            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                            DataSourceID="SqlDataSource_News" ForeColor="#333333" GridLines="None" 
                            Width="100%" onrowdatabound="GridView_News_RowDataBound">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="ID" HeaderText="شماره خبر" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="title" HeaderText="عنوان خبر" SortExpression="title" />
                                <asp:BoundField DataField="content" HeaderText="متن خبر" 
                                    SortExpression="content" />
                                <asp:TemplateField HeaderText="تاریخ">
                                    <ItemTemplate>
                                        <asp:Label ID="Label_Date" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                    DeleteText="حذف" EditText="ویرایش" UpdateText="تایید" CancelText="انصراف" >
                                <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                </asp:CommandField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <EmptyDataTemplate>
                                هیچ خبری به ثبت نرسیده است.
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="False" Font-Names="Tahoma" 
                                ForeColor="White" HorizontalAlign="Center" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource_News" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Amlak %>" 
                            SelectCommand="SELECT [ID], [title], [content], [date_insert] FROM [news]" 
                            DeleteCommand="DELETE FROM [news] WHERE [ID] = @ID" 
                            InsertCommand="INSERT INTO [news] ([title], [content], [date_insert]) VALUES (@title, @content, @date_insert)" 
                            UpdateCommand="UPDATE [news] SET [title] = @title, [content] = @content, [date_insert] = @date_insert WHERE [ID] = @ID">
                            <DeleteParameters>
                                <asp:Parameter Name="ID" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="content" Type="String" />
                                <asp:Parameter DbType="Date" Name="date_insert" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="content" Type="String" />
                                <asp:Parameter DbType="Date" Name="date_insert" />
                                <asp:Parameter Name="ID" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>
                    </asp:View>
                </asp:MultiView>
           </div>
</asp:Content>
