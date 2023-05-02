<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="amlak.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<div style="width: 960px; font-family: tahoma, arial; background-color: #6681BA ;" dir="rtl">
    <div style=" border-style:solid">
     <div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <div dir="rtl" align="center">
             <asp:LinkButton ID="LinkButton_bagh" runat="server" 
                 onclick="LinkButton_bagh_Click">باغ</asp:LinkButton>
             &nbsp;&nbsp;&nbsp;
             <asp:LinkButton ID="LinkButton_zamin" runat="server" 
                 onclick="LinkButton_zamin_Click">زمین</asp:LinkButton>
             &nbsp;&nbsp;&nbsp;
             <asp:LinkButton ID="LinkButton_vila" runat="server" 
                 onclick="LinkButton_vila_Click">ویلا</asp:LinkButton>
             &nbsp;&nbsp;&nbsp;
             <asp:LinkButton ID="LinkButton_khaneh" runat="server" 
                 onclick="LinkButton_khaneh_Click">خانه</asp:LinkButton>
                 <hr style="color: #99CCFF; font-size: medium;" />

           </div>
           <div dir="rtl" align="center">
               <asp:MultiView ID="MultiView_melk" ActiveViewIndex="0" runat="server">
                   <asp:View ID="View_bagh" runat="server">
                   <div dir="rtl" align="center">
                                                      <div style=" border-style:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="6" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت شما می توانید 
                                ملک مورد نظر خود را با توجه به گزینه های مورد نظر جستجو کنید ، در تعیین گزینه ها 
                                دقت فرمایید.<br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ostan_bagh" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="ID" 
                                    ondatabound="DropDownList_ostan_bagh_DataBound" 
                                    onselectedindexchanged="DropDownList_ostan_bagh_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Amlak %>" 
                                    SelectCommand="SELECT [ID], [name] FROM [ostan]"></asp:SqlDataSource>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_shahr_bagh" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                نوع کشت :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_type_bagh" runat="server">
                                <asp:ListItem Value="تعیین نشده">انتخاب کنید ...</asp:ListItem>
                                    <asp:ListItem>دیم</asp:ListItem>
                                    <asp:ListItem>آبی</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="6">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" colspan="6">
                                <asp:Button ID="Button_Search_bagh" runat="server" Font-Names="Tahoma" 
                                    Text="جستجو" onclick="Button_Search_bagh_Click" Height="26px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" colspan="6" 
                                style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" colspan="6" 
                                style="font-size: small; color: #000000">
                                <asp:GridView ID="GridView_bagh" runat="server" AllowPaging="True" 
                                    CellPadding="4" EnableSortingAndPagingCallbacks="True" ForeColor="#333333" 
                                    GridLines="None" Width="100%" AutoGenerateColumns="False" 
                                    DataKeyNames="ID" 
                                    onselectedindexchanged="GridView_bagh_SelectedIndexChanged" 
                                    onrowdatabound="GridView_bagh_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                         <Columns>
                                             <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                 ReadOnly="True" SortExpression="ID" Visible="False" />
                                             <asp:BoundField DataField="name" HeaderText="استان" SortExpression="name" />
                                             <asp:BoundField DataField="Expr1" HeaderText="شهر" SortExpression="Expr1" />
                                             <asp:BoundField DataField="rosta" HeaderText="روستا" SortExpression="rosta" />
                                             <asp:BoundField DataField="metrazh" HeaderText="متراژ" 
                                                 SortExpression="metrazh" />
                                             <asp:BoundField DataField="type" HeaderText="نوع کاربری" SortExpression="type" />
                                             <asp:BoundField DataField="aj_fo" HeaderText="به منظور" SortExpression="aj_fo" />
                                             <asp:BoundField DataField="ghaimat" HeaderText="قیمت" 
                                                 SortExpression="ghaimat" />
                                             <asp:TemplateField HeaderText="تاریخ">
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label_bagh" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:CommandField SelectText="نمایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                         <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                         <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
</div>

                   </div>
                   </asp:View>
                   <asp:View ID="View_zamin" runat="server">
                   <div dir="rtl" align="center">
                                                      <div style=" border-style:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="4" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت شما می توانید 
                                ملک مورد نظر خود را با توجه به گزینه های مورد نظر جستجو کنید ، در تعیین گزینه ها 
                                دقت فرمایید.<br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ostan_zamin" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="ID" 
                                    ondatabound="DropDownList_ostan_zamin_DataBound" 
                                    onselectedindexchanged="DropDownList_ostan_zamin_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_shahr_zamin" runat="server">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                نوع کاربری:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_type_zamin" runat="server">
                                 <asp:ListItem Value="تعیین نشده">انتخاب کنید ...</asp:ListItem>
                                    <asp:ListItem>مسکونی</asp:ListItem>
                                    <asp:ListItem>اداری</asp:ListItem>
                                    <asp:ListItem>تجاری</asp:ListItem>
                                    <asp:ListItem>تجاری - مسکونی</asp:ListItem>
                                    <asp:ListItem>کشاورزی</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                وضعیت زمین :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_state_zamin" runat="server">
                                <asp:ListItem Value="تعیین نشده">انتخاب کنید ...</asp:ListItem>
                                    <asp:ListItem>اوقافی</asp:ListItem>
                                    <asp:ListItem>در گرو بانک</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="4">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Button ID="Button_Search_zamin" runat="server" Font-Names="Tahoma" 
                                    Text="جستجو" onclick="Button_Search_zamin_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:GridView ID="GridView_zamin" runat="server" AllowPaging="True" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                                    AutoGenerateColumns="False" DataKeyNames="ID" 
                                    onselectedindexchanged="GridView_zamin_SelectedIndexChanged" 
                                    onrowdatabound="GridView_zamin_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                         <Columns>
                                             <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                 ReadOnly="True" SortExpression="ID" Visible="False" />
                                             <asp:BoundField DataField="name" HeaderText="استان" SortExpression="name" />
                                             <asp:BoundField DataField="Expr1" HeaderText="شهر" SortExpression="Expr1" />
                                             <asp:BoundField DataField="metrazh" HeaderText="متراژ" 
                                                 SortExpression="metrazh" />
                                             <asp:BoundField DataField="ghaimat" HeaderText="قیمت" 
                                                 SortExpression="ghaimat" />
                                             <asp:BoundField DataField="state" HeaderText="وضعیت" SortExpression="state" />
                                             <asp:BoundField DataField="type" HeaderText="نوع کاربری" SortExpression="type" />
                                             <asp:TemplateField HeaderText="تاریخ">
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label_zamin" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:CommandField SelectText="نمایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                         <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                         <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
</div>

                   </div>
                   </asp:View>
                   <asp:View ID="View_vila" runat="server"> 
                                   <div style=" border-style:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="6" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت شما می توانید 
                                ملک مورد نظر خود را با توجه به گزینه های مورد نظر جستجو کنید ، در تعیین گزینه ها 
                                دقت فرمایید.<br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ostan_villa" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="ID" 
                                    ondatabound="DropDownList_ostan_villa_DataBound" 
                                    onselectedindexchanged="DropDownList_ostan_villa_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_shahr_villa" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                وضعیت بنا :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_state_villa" runat="server" Height="16px">
                                 <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>تخلیه</asp:ListItem>
                                                <asp:ListItem>دراجاره</asp:ListItem>             
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" colspan="6" dir="rtl" style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="6">
                                <asp:Button ID="Button_Search_vila" runat="server" Font-Names="Tahoma" 
                                    Text="جستجو" onclick="Button_Search_vila_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="6" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="6" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:GridView ID="GridView_vila" runat="server" AllowPaging="True" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                                    AutoGenerateColumns="False" DataKeyNames="ID" 
                                    onselectedindexchanged="GridView_vila_SelectedIndexChanged" 
                                    onrowdatabound="GridView_vila_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                         <Columns>
                                             <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                 ReadOnly="True" SortExpression="ID" Visible="False" />
                                             <asp:BoundField DataField="name" HeaderText="استان" SortExpression="name" />
                                             <asp:BoundField DataField="Expr1" HeaderText="شهر" SortExpression="Expr1" />
                                             <asp:BoundField DataField="metrazh" HeaderText="متراژ" 
                                                 SortExpression="metrazh" />
                                             <asp:BoundField DataField="age" HeaderText="سن بنا" SortExpression="age" />
                                             <asp:BoundField DataField="state" HeaderText="وضعیت" SortExpression="state" />
                                             <asp:BoundField DataField="aj_fo" HeaderText="به منظور" SortExpression="aj_fo" />
                                             <asp:BoundField DataField="ghaimat" HeaderText="قیمت" 
                                                 SortExpression="ghaimat" />
                                             <asp:TemplateField HeaderText="تاریخ">
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label_vila" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:CommandField SelectText="نمایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                         <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                         <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                    </table>
</div>

                   </asp:View>
                   <asp:View ID="View_khaneh" runat="server">
                <div style=" border-style:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="4" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت شما می توانید 
                                ملک مورد نظر خود را با توجه به گزینه های مورد نظر جستجو کنید ، در تعیین گزینه ها 
                                دقت فرمایید.<br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                نوع ملک:&nbsp;
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_Type" runat="server">
                                <asp:ListItem Value="تعیین نشده">انتخاب کنید</asp:ListItem>
                                                    <asp:ListItem>آپارتمان</asp:ListItem>
                                                    <asp:ListItem>آپارتمان اداری</asp:ListItem>
                                                    <asp:ListItem>آپارتمان تجاری</asp:ListItem>
                                                    <asp:ListItem>دفترکار</asp:ListItem>
                                                    <asp:ListItem>مغازه</asp:ListItem>
                                                    <asp:ListItem>خانه</asp:ListItem>
                                                    <asp:ListItem>ویلا</asp:ListItem>
                                                    <asp:ListItem>کلنگی</asp:ListItem>
                                                    <asp:ListItem>زمین</asp:ListItem>
                                                    <asp:ListItem>باغ</asp:ListItem>
                                                    <asp:ListItem>انبار</asp:ListItem>
                                                    <asp:ListItem>گاراژ</asp:ListItem>
                                                    <asp:ListItem>کارخانه</asp:ListItem>
                                                    <asp:ListItem>سایر موارد</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;<asp:DropDownList ID="DropDownList_Ostan" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="ID" 
                                    ondatabound="DropDownList_Ostan_DataBound" 
                                    onselectedindexchanged="DropDownList_Ostan_SelectedIndexChanged" 
                                    AutoPostBack="True">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_City" runat="server">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                وضعیت بنا :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_State" runat="server">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>تخلیه</asp:ListItem>
                                                <asp:ListItem>دراجاره</asp:ListItem>
                                                <asp:ListItem>کلنگی</asp:ListItem>
                                                <asp:ListItem>نوساز</asp:ListItem>
                                                <asp:ListItem>اسکلت</asp:ListItem>
                                                <asp:ListItem>نیمه اسکلت</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="4">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="4">
                                <asp:Button ID="Button_Search_khaneh" runat="server" Font-Names="Tahoma" 
                                    Text="جستجو" onclick="Button_Search_khaneh_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="4">
                                <asp:GridView ID="GridView_khaneh" runat="server" AllowPaging="True" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%" 
                                    AutoGenerateColumns="False" DataKeyNames="ID" 
                                    onselectedindexchanged="GridView_khaneh_SelectedIndexChanged" 
                                    onrowdatabound="GridView_khaneh_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                         <Columns>
                                             <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                                                 Visible="False" />
                                             <asp:BoundField DataField="name" HeaderText="استان" SortExpression="name" />
                                             <asp:BoundField DataField="Expr1" HeaderText="شهر" SortExpression="Expr1" />
                                             <asp:BoundField DataField="metrazh" HeaderText="متراژ" 
                                                 SortExpression="metrazh" />
                                             <asp:BoundField DataField="age" HeaderText="سن بنا" SortExpression="age" />
                                             <asp:BoundField DataField="state" HeaderText="وضعیت" SortExpression="state" />
                                             <asp:BoundField DataField="ghaimat" HeaderText="قیمت" 
                                                 SortExpression="ghaimat" />
                                             <asp:BoundField DataField="aj_fo" HeaderText="به منظور" SortExpression="aj_fo" />
                                             <asp:BoundField DataField="type" HeaderText="نوع ملک" SortExpression="type" />
                                             <asp:TemplateField HeaderText="تاریخ">
                                                 <ItemTemplate>
                                                     <asp:Label ID="Label_khaneh" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:CommandField SelectText="نمایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                         <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                         <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
                                         <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                         <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                         <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                         <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                         <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                                </asp:GridView>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="4">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                    </table>
</div>
            </asp:View>
                                <asp:View ID="View_show_bagh" runat="server">
                        <div dir="rtl" align="center">
                            <div style="border-style: solid">
                                <table style="width: 100%;">
                                    <tr>
                                        <td align="right" colspan="5" dir="rtl">
                                           
                                            <br />
                                            <hr style="color: #99CCFF; font-size: medium;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;استان:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                            <asp:Label ID="Label_ostan_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;شهر:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_shahr_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            روستا:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                            <asp:Label ID="Label_rosta_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            فاصله از شهر:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_fasele_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;قیمت :
                                        </td>
                                        <td align="right" colspan="2" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_ghaimat_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;متراژ:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_metrazh_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            محصول:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                            <asp:Label ID="Label_mahsol_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            نوع کشت :
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_type_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            آدرس:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_address_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" colspan="2" dir="rtl" style="border: thin solid #CCCCCC">
                                            به منظور:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_ajfo_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            توضیحات:
                                        </td>
                                        <td align="right" colspan="4" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_description_bagh" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" colspan="5">
                                            <hr style="color: #99CCFF; font-size: medium;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_ab_bagh" runat="server" Text="آب" Enabled="False" />
                                        </td>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_gaz_bagh" runat="server" Text="گاز" 
                                                Enabled="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_bargh_bagh" runat="server" Text="برق" 
                                                Enabled="False" />
                                        </td>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_telephone_bagh" runat="server" Text="تلفن" 
                                                Enabled="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_jhah_bagh" runat="server" Text="چاه" 
                                                Enabled="False" />
                                        </td>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_khanevila_bagh" runat="server" Text="خانه ویلایی" 
                                                Enabled="False" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:CheckBox ID="CheckBox_estakhr_bagh" runat="server" Text="استخر" 
                                                Enabled="False" />
                                        </td>
                                        <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" colspan="5" dir="rtl" style="font-size: small; color: #000000">
                                            <hr style="color: #99CCFF; font-size: medium;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" dir="rtl" style="font-size: small; color: #000000" colspan="5">
                                            <asp:Button ID="Button_bagh" runat="server" Font-Names="Tahoma" Text="بازگشت" 
                                                onclick="Button_bagh_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View_show_zamin" runat="server">
                        <div dir="rtl" align="center">
                            <div style="border-style: solid">
                                <table style="width: 100%;">
                                    <tr>
                                        <td align="right" colspan="4" dir="rtl">
                                           <br />
                                            <hr style="color: #99CCFF; font-size: medium;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;استان:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_ostan_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;شهر:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_shahr_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;قیمت :
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_ghaimat_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            &nbsp;متراژ:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_metrazh_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            نوع کاربری:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_type_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            وضعیت زمین :
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_state_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            آدرس :
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_address_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            فاصله از شهر:
                                        </td>
                                        <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_fasele_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                            توضیحات :
                                        </td>
                                        <td align="right" colspan="3" dir="rtl" style="border: thin solid #CCCCCC">
                                            <asp:Label ID="Label_descrption_zamin" runat="server" Text="Label"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" dir="rtl" colspan="4">
                                            <hr style="color: #99CCFF; font-size: medium;" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="4" dir="rtl" style="font-size: small; color: #000000">
                                            <asp:Button ID="Button_zamin" runat="server" Font-Names="Tahoma" 
                                                Text="بازگشت" onclick="Button_zamin_Click" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </asp:View>
                    <asp:View ID="View_show_vila" runat="server">
                        <div style="border-style: solid">
                            <table style="width: 100%;">
                                <tr>
                                    <td align="right" colspan="4" dir="rtl">
                                       <br />
                                        <hr style="color: #99CCFF; font-size: medium;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;استان:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_ostan_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;شهر:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_shahr_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;قیمت :
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_ghaimat_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;متراژ:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_metrazh_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        سن بنا:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_age_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        وضعیت بنا :
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_state_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        فاصله از شهر:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_fasele_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        به منظور:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_ajfo_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        آدرس :
                                    </td>
                                    <td align="right" colspan="3" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_address_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        توضیحات :
                                    </td>
                                    <td align="right" colspan="3" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_description_vila" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" colspan="4">
                                        <hr style="color: #99CCFF; font-size: medium;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_kaf_villa" runat="server" Text="کف پوش" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_ab_villa" runat="server" Text="آب" Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_entrance_villa" runat="server" Text="ورودی مستقل" 
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_service_villa" runat="server" Text="سرویس آشپزخانه" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_bargh_villa" runat="server" Text="برق" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_yard_villa" runat="server" Text="حیاط" 
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_mobleh_villa" runat="server" Text="مبله" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_gaz_villa" runat="server" Text="گاز" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_parking_villa" runat="server" Text="پارکینگ" 
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_stakher_villa" runat="server" Text="استخر" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_telephone_villa" runat="server" Text="تلفن" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_anbari_villa" runat="server" Text="انباری" Enabled="False" 
                                            />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl" width="font-size: small; color: #000000">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="4" dir="rtl" style="font-size: small; color: #000000">
                                        <hr style="color: #99CCFF; font-size: medium;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" dir="rtl" style="font-size: small; color: #000000" colspan="4">
                                        <asp:Button ID="Button_vila" runat="server" Font-Names="Tahoma" Text="بازگشت" 
                                            onclick="Button_vila_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:View>
                    <asp:View ID="View_show_khaneh" runat="server">
                        <div style="border-style: solid">
                            <table style="width: 100%;">
                                <tr>
                                    <td align="right" colspan="5" dir="rtl">
                                        <br />
                                        <hr style="color: #99CCFF; font-size: medium;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        نوع ملک:&nbsp;
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_type_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;استان:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_ostan_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;شهر:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_shahr_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;متراژ:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_metrazh_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        &nbsp;قیمت :
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_ghaimat_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        به منظور:
                                    </td>
                                    <td align="right" colspan="2" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_ajfo_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        سن بنا:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_age_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        وضعیت بنا :
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_state_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        آدرس:
                                    </td>
                                    <td align="right" colspan="4" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_address_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                        توضیحات:
                                    </td>
                                    <td align="right" colspan="4" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_description_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" colspan="5">
                                        <hr style="color: #99CCFF; font-size: medium;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        کف پوش:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_kaf_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        آب:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_ab_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        سرویس آشپزخانه:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_service_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        برق:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_bargh_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        نما:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_nama_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        گاز:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_gaz_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        جهت:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:Label ID="Label_jahat_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                    <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                        تلفن:
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                        <asp:Label ID="Label_telephone_khaneh" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_Deadlock" runat="server" Text="بن بست" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_Parking" runat="server" Text="پارکینگ" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" width="font-size: small; color: #000000" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_Yard" runat="server" Text="حیاط" Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                        <asp:CheckBox ID="CheckBox_Entrance" runat="server" Text="ورودی مستقل" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                        <asp:CheckBox ID="CheckBox_Anbar" runat="server" Text="انباری" 
                                            Enabled="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" dir="rtl" style="border: thin solid #CCCCCC; font-size: small;
                                        color: #000000">
                                        <asp:CheckBox ID="CheckBox_asansor" runat="server" Text="آسانسور" 
                                            Enabled="False" />
                                    </td>
                                    <td align="right" dir="rtl">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl" width="font-size: small; color: #000000">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl">
                                        &nbsp;
                                    </td>
                                    <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" colspan="5" dir="rtl" style="font-size: small; color: #000000">
                                        <hr style="color: #99CCFF; font-size: medium;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="5" dir="rtl" style="font-size: small; color: #000000">
                                        <asp:Button ID="Button_khaneh" runat="server" Font-Names="Tahoma" 
                                            Text="بازگشت" onclick="Button_khaneh_Click" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </asp:View>

               </asp:MultiView>
           </div>
        </ContentTemplate>
        </asp:UpdatePanel>
  
    </div>
    </div>
    </div>
</asp:Content>
