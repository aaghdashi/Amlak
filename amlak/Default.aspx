<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="amlak.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: small; font-family: tahoma, arial; color: #333333; min-height: 400px;
        background-color: #6681BA; width: 960px; float: right; position: relative; right: auto;"
        dir="rtl" align="right">
        <p>
            * کاربر گرامی در صورتی که میخواهید ملک خود را در این سایت ثبت کنید بایستی ابتدا
            عضو شوید.</p>
        <p>
            *برای مشاهده کلیه املاک واگذار شده در این سایت بر روی لیست املاک کلیک کنید.</p>
        <p>
            * برای جستجوی ملک مورد نظر خود بر روی جستجوی ملک کلیک نمایید.</p>
        <hr style="color: #99CCFF; font-size: medium;" />
        <div style="font-family: tahoma, arial; font-size: small; color: #000000; font-style: oblique;
            font-weight: normal; position: relative; float: right; clip: rect(auto, auto, auto, auto)"
            align="center">
            
            <asp:SqlDataSource ID="SqlDataSource_last_Inserted" runat="server" ConnectionString="<%$ ConnectionStrings:Amlak %>"
                SelectCommand="SELECT [title], [content], [date_insert] FROM [news]"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource_last_Inserted"
                OnItemDataBound="Repeater1_ItemDataBound">
                <HeaderTemplate>
                    <div dir="rtl" align="center" style="width: 60%">
                        <p align="center" style="font-size: medium; color: #FFFFFF">
                            &nbsp;آخرین اخبار سایت</p>
                        <hr style="color: #99CCFF; font-size: medium;" />
                    </div>
                </HeaderTemplate>
                <ItemTemplate>
                    <div dir="rtl" align="center" style="width: 60%">
                        <div style="width: 100%">
                            <p dir="rtl" style="text-align: right">
                                <span style="font-size: x-small; color: #666666;">تاریخ:</span><asp:Label ID="lbl_date"
                                    runat="server" Text='<%#Eval("date_insert")%>'></asp:Label>
                            </p>
                        </div>
                        <div dir="rtl" style="text-align: right; width: 60%">
                            <pre><span style="font-size: x-small; color: #666666;">عنوان خبر:</span><%#Eval("title")%></pre>
                        </div>
                        <div dir="rtl" style="text-align: right; width: 60%">
                            <pre><span style="font-size: x-small; color: #666666;">متن خبر:</span><%#Eval("content")%></pre>
                                                    <br />
                        <hr style="color: #99CCFF; font-size: medium;" />

                        </div>
                        <br />
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
