<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Insert_Melk.aspx.cs" Inherits="amlak.User.Insert_Melk" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
    <br />
    <hr style="color: #99CCFF; font-size: medium;" />
    <p><span class="style1">*</span> کاربر گرامی در صورتی که میخواهید اطلاعات ملک خود را 
        وارد کنید بعد از&nbsp; انتخاب نوع ملک و وارد کردن داده ها و اطمینان از صحت اطلاعات وارد شده بر روی 
        دکمه ثبت اطلاعات کلیک کنید.</p>
        <br />
        <p><span class="style1">*</span> کاربر گرامی در صورتی که&nbsp; اطلاعات ملک شما از 
            سوی مدیر سایت تایید شود در بخش لیست املاک و جستجوی ملک قابل مشاهده می باشد.</p>
     <p><span class="style1">*</span> کاربر گرامی در وارد کردن داده ها به موارد زیر توجه 
         فرمایید:</p>
        <p><span class="style1">-</span> مقدار قیمت را به میلیون با عدد وارد کنید.</p>
        <p><span class="style1">-</span> فاصله از شهر را به کیلومتر با عدد وارد کنید.</p>
        <p><span class="style1">-</span> متراژ را به متر مربع و با عدد وارد کنید.</p>
        <p><span class="style1">-</span> سن بنا را به سال و با عدد وارد کنید.</p>
        <p><span class="style1">- </span>در صورتی که&nbsp; فیلدی را برای وارد کردن داده مورد 
            نظر خود پیدا نکردید ، می توانید اطلاعات خود را در قسمت تو ضیحات وارد کنید.</p>
       <hr style="color: #99CCFF; font-size: medium;" />
     </div>
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
                            <td align="right" colspan="5" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت 
                                شما می توانید اطلاعات ملک مورد نظر خود را با توجه به گزینه های مورد نظر وارد 
                                کنید ، در تعیین گزینه ها دقت فرمایید.<br /> <br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:DropDownList ID="DropDownList_ostan_bagh" runat="server" 
                                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="ID" 
                                    onselectedindexchanged="DropDownList_ostan_bagh_SelectedIndexChanged" 
                                    AutoPostBack="True" Width="100px">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Amlak %>" 
                                    SelectCommand="SELECT [ID], [name] FROM [ostan]"></asp:SqlDataSource>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_shahr_bagh" runat="server" Width="100px" >
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                روستا:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:TextBox ID="TextBox_rosta_bagh" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                فاصله از شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_fasele_bagh" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;قیمت :</td>
                            <td align="right" colspan="2" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_ghaimat_bagh" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;متراژ:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="Textbox_metrazh_bagh" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                محصول:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:TextBox ID="TextBox_mahsol_bagh" runat="server"></asp:TextBox>
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
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                آدرس:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_address_bagh" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <td align="left" colspan="2" dir="rtl" style="border: thin solid #CCCCCC">
                                به منظور:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ajfo_bagh" runat="server">
                                <asp:ListItem Value="تعیین نشده">انتخاب کنید ...</asp:ListItem>
                                    <asp:ListItem>فروش</asp:ListItem>
                                    <asp:ListItem>اجاره</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                توضیحات:</td>
                            <td align="right" colspan="4" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_description_bagh" runat="server" Height="100px" 
                                    Rows="3" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="5">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_ab_bagh" runat="server" Text="آب" />
                            </td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_gaz_bagh" runat="server" Text="گاز" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_bargh_bagh" runat="server" Text="برق" />
                            </td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_telephone_bagh" runat="server" Text="تلفن" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_jhah_bagh" runat="server" Text="چاه" />
                            </td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_khanevila_bagh" runat="server" Text="خانه ویلایی" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_estakhr_bagh" runat="server" Text="استخر" />
                            </td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="5" dir="rtl" style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="5">
                                <asp:Button ID="Button_Insert_bagh" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_Insert_bagh_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Literal ID="Literal_State_bagh" runat="server"></asp:Literal>
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
                            <td align="right" colspan="5" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت 
                                شما می توانید اطلاعات ملک مورد نظر خود را با توجه به گزینه های مورد نظر وارد 
                                کنید ، در تعیین گزینه ها دقت فرمایید.<br /> <br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ostan_zamin" runat="server" 
                                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
                                    DataValueField="ID" 
                                    onselectedindexchanged="DropDownList_ostan_zamin_SelectedIndexChanged" 
                                    Width="100px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_shahr_zamin" runat="server" Width="100px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;قیمت :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_ghaimat_zamin" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;متراژ:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_metrazh_zamin" runat="server" Width="100px"></asp:TextBox>
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
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                آدرس :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_address_zamin" runat="server" Width="300px"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                فاصله از شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_fasele_zamin" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                توضیحات :</td>
                            <td align="right" colspan="3" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_description_zamin" runat="server" Height="100px" 
                                    Rows="3" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="4">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Button ID="Button_Insert_zamin" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_Insert_zamin_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Literal ID="Literal_State_zamin" runat="server"></asp:Literal>
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
                            <td align="right" colspan="5" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت 
                                شما می توانید اطلاعات ملک مورد نظر خود را با توجه به گزینه های مورد نظر وارد 
                                کنید ، در تعیین گزینه ها دقت فرمایید.<br /> <br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;استان:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ostan_villa" runat="server" 
                                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
                                    DataValueField="ID" 
                                    onselectedindexchanged="DropDownList_ostan_villa_SelectedIndexChanged" 
                                    Width="100px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_shahr_villa" runat="server" Width="100px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;قیمت :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_Ghaimat_villa" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;متراژ:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_metrazh_villa" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                سن بنا:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_age_villa" runat="server" Width="80px"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                وضعیت بنا :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_state_villa" runat="server">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>تخلیه</asp:ListItem>
                                                <asp:ListItem>دراجاره</asp:ListItem>                                                
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                فاصله از شهر:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_fasele_vila" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                به منظور:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_ajfo_vila" runat="server">
                                    <asp:ListItem Value="تعیین نشده">انتخاب کنید ...</asp:ListItem>
                                    <asp:ListItem>فروش</asp:ListItem>
                                    <asp:ListItem>اجاره</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                آدرس :</td>
                            <td align="right" colspan="3" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_address_vila" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                توضیحات :</td>
                            <td align="right" colspan="3" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_description_vila" runat="server" Height="100px" 
                                    Rows="3" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="4">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl">
                                &nbsp;</td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                &nbsp;</td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_kaf_villa" runat="server" Text="کف پوش" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_ab_villa" runat="server" Text="آب" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_entrance_villa" runat="server" Text="ورودی مستقل" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_service_villa" runat="server" 
                                    Text="سرویس آشپزخانه" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_bargh_villa" runat="server" Text="برق" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_yard_villa" runat="server" Text="حیاط" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_mobleh_villa" runat="server" Text="مبله" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_gaz_villa" runat="server" Text="گاز" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_parking_villa" runat="server" Text="پارکینگ" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_stakher_villa" runat="server" Text="استخر" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_telephone_villa" runat="server" Text="تلفن" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_anbari_villa" runat="server" Text="انباری" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl">
                                &nbsp;</td>
                            <td align="right" dir="rtl" width="font-size: small; color: #000000">
                                &nbsp;</td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="4" dir="rtl" style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="4">
                                <asp:Button ID="Button_Insert_vila" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_Insert_vila_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Literal ID="Literal_vila" runat="server"></asp:Literal>
                            </td>
                        </tr>
                    </table>
</div>

                   </asp:View>
                   <asp:View ID="View_khaneh" runat="server">
                <div style=" border-style:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="5" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت 
                                شما می توانید اطلاعات ملک مورد نظر خود را با توجه به گزینه های مورد نظر وارد 
                                کنید ، در تعیین گزینه ها دقت فرمایید.<br /> <br />
                                <hr style="color: #99CCFF; font-size: medium;" />

                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                نوع ملک:&nbsp;
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_Type" runat="server" >
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
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                &nbsp;<asp:DropDownList ID="DropDownList_Ostan" runat="server" 
                                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
                                    DataValueField="ID" 
                                    onselectedindexchanged="DropDownList_Ostan_SelectedIndexChanged" Width="100px">
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;شهر:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_City" runat="server" Width="100px">
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;متراژ:
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:TextBox ID="TextBox_Metrazh" runat="server" Width="100px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                &nbsp;قیمت :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_Ghaimat_khaneh" runat="server"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                به منظور:</td>
                            <td align="right" colspan="2" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_state_khaneh" runat="server">
                                    <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                    <asp:ListItem>تخلیه</asp:ListItem>
                                    <asp:ListItem>دراجاره</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                سن بنا:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_age" runat="server" Width="80px"></asp:TextBox>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                وضعیت بنا :</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
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
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                آدرس:</td>
                            <td align="right" colspan="4" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_address_khaneh" runat="server" Width="300px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC">
                                توضیحات:</td>
                            <td align="right" colspan="4" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:TextBox ID="TextBox_description_khaneh" runat="server" Height="100px" 
                                    Rows="3" Width="350px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" colspan="5">
                               <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                کف پوش:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_Floor" runat="server" Width="120px">
                                 <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>پارکت</asp:ListItem>
                                                <asp:ListItem>موکت</asp:ListItem>
                                                <asp:ListItem>موزاییک</asp:ListItem>
                                                <asp:ListItem>سرامیک</asp:ListItem>
                                                <asp:ListItem>سنگ</asp:ListItem>
                                                <asp:ListItem>سیمان</asp:ListItem>
                                                <asp:ListItem>گرانیت</asp:ListItem>
                                                <asp:ListItem>معمولی</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                آب:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:DropDownList ID="DropDownList_ab" runat="server" Width="120px">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>مستقل</asp:ListItem>
                                                <asp:ListItem>مشترک</asp:ListItem>
                                                <asp:ListItem>ندارد</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                سرویس آشپزخانه:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_Kitchen" runat="server" Width="120px">
                                 <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>کاشی</asp:ListItem>
                                                <asp:ListItem>MDF</asp:ListItem>
                                                <asp:ListItem>فلزی</asp:ListItem>
                                                <asp:ListItem>چوبی</asp:ListItem>
                                                <asp:ListItem>فایبر گلاس</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                برق:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:DropDownList ID="DropDownList_bargh" runat="server" Width="120px">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>مستقل</asp:ListItem>
                                                <asp:ListItem>مشترک</asp:ListItem>
                                                <asp:ListItem>ندارد</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                نما:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">

                                <asp:DropDownList ID="DropDownList_View" runat="server" Width="120px">
                                 <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>متالیکا</asp:ListItem>
                                                <asp:ListItem>سنگ</asp:ListItem>
                                                <asp:ListItem>سفال</asp:ListItem>
                                                <asp:ListItem>کنیتکس</asp:ListItem>
                                                <asp:ListItem>رومی</asp:ListItem>
                                                <asp:ListItem>سرامیک</asp:ListItem>
                                                <asp:ListItem>گرانیت</asp:ListItem>
                                                <asp:ListItem>آجرنما</asp:ListItem>
                                                <asp:ListItem>سیمان سفید</asp:ListItem>
                                                <asp:ListItem>شیشه</asp:ListItem>
                                                <asp:ListItem>کامبوزیت</asp:ListItem>
                                                <asp:ListItem Value="آلومینیوم">آلومینیم</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                گاز:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:DropDownList ID="DropDownList_gaz" runat="server" Width="120px">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>مستقل</asp:ListItem>
                                                <asp:ListItem>مشترک</asp:ListItem>
                                                <asp:ListItem>ندارد</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                جهت:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:DropDownList ID="DropDownList_Direction" runat="server" Width="120px">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>شمالی</asp:ListItem>
                                                <asp:ListItem>جنوبی</asp:ListItem>
                                                <asp:ListItem>شرقی</asp:ListItem>
                                                <asp:ListItem>غربی</asp:ListItem>
                                                <asp:ListItem>دونبش</asp:ListItem>
                                                <asp:ListItem>سه نبش</asp:ListItem>
                                                <asp:ListItem>شمالی جنوبی دوکله</asp:ListItem>
                                                <asp:ListItem>شمالی غربی دوکله</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                            <td align="left" dir="rtl" style="border: thin solid #CCCCCC;">
                                تلفن:</td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC" colspan="2">
                                <asp:DropDownList ID="DropDownList_telephone" runat="server" Width="120px">
                                <asp:ListItem Value="تعیین نشده">...انتخاب کنید...</asp:ListItem>
                                                <asp:ListItem>مستقل</asp:ListItem>
                                                <asp:ListItem>مشترک</asp:ListItem>
                                                <asp:ListItem>ندارد</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_Deadlock" runat="server" Text="بن بست" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_Parking" runat="server" Text="پارکینگ" />
                            </td>
                            <td align="right" dir="rtl" width="font-size: small; color: #000000" 
                                style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_Yard" runat="server" Text="حیاط" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC">
                                <asp:CheckBox ID="CheckBox_Entrance" runat="server" Text="ورودی مستقل" />
                            </td>
                            <td align="right" dir="rtl" style="border: thin solid #CCCCCC;">
                                <asp:CheckBox ID="CheckBox_Anbar" runat="server" Text="انباری" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" dir="rtl" 
                                style="border: thin solid #CCCCCC; font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_asansor" runat="server" Text="آسانسور" />
                            </td>
                            <td align="right" dir="rtl">
                                &nbsp;</td>
                            <td align="right" dir="rtl" width="font-size: small; color: #000000">
                                &nbsp;</td>
                            <td align="right" dir="rtl">
                                &nbsp;</td>
                            <td align="right" dir="rtl" style="font-size: small; color: #000000">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" colspan="5" dir="rtl" style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" /></td>
                        </tr>
                        <tr>
                            <td align="center" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="5">
                                <asp:Button ID="Button_Insert_khaneh" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_Insert_khaneh_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Literal ID="Literal_khaneh" runat="server"></asp:Literal>
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
</asp:Content>
