<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="List_Show.aspx.cs" Inherits="amlak.Admin.List_Show" %>
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
    <p><span class="style1">*</span> مدیر گرامی در صورتی که میخواهید اطلاعات املاک ثبت 
        شده را 
        مشاهده کنید بعد از&nbsp;انتخاب نوع ملک بر روی 
        مشاهده اطلاعات کلیک کنید.</p>
        <p><span class="style1">*</span> مدیر گرامی در این بخش از سایت بایستی صحت اطلاعات 
            املاک ثبت شده را بررسی کرده و در صورت صحیح بودن اطلاعات&nbsp; ملک مورد نظر را 
            تایید کنید تا در سایت به نمایش گذاشته شود.</p>
        <p><span class="style1">*</span> همچنین امکان ویرایش اطلاعات به ثبت رسیده توسط مدیر 
            نیز وجود دارد.</p>
        <br />
       
        
       <hr style="color: #99CCFF; font-size: medium;" />
     </div>
       <div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA; width:960px; float:right; position: relative; right: auto;" 
    dir="rtl" align="right">
   
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>        
           <div dir="rtl" align="center">
               <asp:MultiView ID="MultiView_melk" ActiveViewIndex="4" runat="server">
                   <asp:View ID="View_bagh" runat="server">
                   <div dir="rtl" align="center">
                                                      <div style=" border-style:solid">
                    <table style="width: 100%;">
                        <tr>
                            <td align="right" colspan="5" dir="rtl">
                                &nbsp; &nbsp; &nbsp;<span class="style1">*</span> کاربر گرامی در این بخش از سایت شما می توانید 
                                ملک مورد نظر خود را با توجه به گزینه های مورد نظر جستجو کنید ، در تعیین گزینه ها 
                                دقت فرمایید.<br /> <br />
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
                                    AutoPostBack="True" Width="100px" 
                                    ondatabound="DropDownList_ostan_bagh_DataBound" 
                                    onselectedindexchanged="DropDownList_ostan_bagh_SelectedIndexChanged">
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
                            <td align="right" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="5">
                                <asp:CheckBox ID="CheckBox_bagh_permission" runat="server" Font-Bold="False" 
                                    ForeColor="Red" Text="تایید صحت اطلاعات به ثبت رسیده" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Button ID="Button_bagh" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_bagh_Click" />
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
                                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
                                    DataValueField="ID" 
                                    Width="100px" ondatabound="DropDownList_ostan_zamin_DataBound" 
                                    onselectedindexchanged="DropDownList_ostan_zamin_SelectedIndexChanged">
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
                            <td align="right" colspan="4" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:CheckBox ID="CheckBox_zamin_permission" runat="server" ForeColor="Red" 
                                    Text="تایید صحت اطلاعات به ثبت رسیده" />
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
                                <asp:Button ID="Button_zamin" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_zamin_Click" />
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
                                <asp:DropDownList ID="DropDownList_ostan_villa" runat="server" 
                                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" 
                                    DataValueField="ID" 
                                    Width="100px" ondatabound="DropDownList_ostan_villa_DataBound" 
                                    onselectedindexchanged="DropDownList_ostan_villa_SelectedIndexChanged">
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
                            <td align="right" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="4">
                                <asp:CheckBox ID="CheckBox_vila_permission" runat="server" ForeColor="Red" 
                                    Text="تایید صحت اطلاعات به ثبت رسیده" />
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
                                <asp:Button ID="Button_vila" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_vila_Click" />
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
                                    Width="100px" 
                                    onselectedindexchanged="DropDownList_Ostan_SelectedIndexChanged" 
                                    ondatabound="DropDownList_Ostan_DataBound">
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
                                    <asp:ListItem>اجاره</asp:ListItem>
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
                            <td align="right" dir="rtl" style="font-size: small; color: #000000" 
                                colspan="5">
                                <asp:CheckBox ID="CheckBox_khaneh_permission" runat="server" ForeColor="Red" 
                                    Text="تایید صحت اطلاعات به ثبت رسیده" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <hr style="color: #99CCFF; font-size: medium;" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="5" dir="rtl" 
                                style="font-size: small; color: #000000">
                                <asp:Button ID="Button_khaneh" runat="server" Font-Names="Tahoma" 
                                    Text="ثبت اطلاعات" onclick="Button_khaneh_Click" />
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
            <asp:View ID="View_show_melk" runat="server">
                     <div style=" border-style:solid">

                         <table style="width:100%;">
                             <tr>
                                 <td>
                                     <div align="center" dir="rtl" 
                                         style="font-weight: 700; font-size: 15pt; color: #FFFFFF">
                                         نمایش ملک های ثبت شده بر اساس تاریخ ثبت</div>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <hr style="color: #99CCFF; font-size: medium;" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <div align="center" dir="rtl" 
                                         style="font-weight: 700; font-size: small; color: #FFFFFF">
                                         لیست باغ های ثبت شده</div>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:GridView ID="GridView_bagh" runat="server" AllowPaging="True" 
                                         AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                                         DataSourceID="SqlDataSource_bagh" ForeColor="#333333" GridLines="None" 
                                         Width="100%" onselectedindexchanged="GridView_bagh_SelectedIndexChanged" 
                                                                          onrowdatabound="GridView_bagh_RowDataBound" >
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
                                                     <asp:Label ID="Label_date_bagh" runat="server" 
                                                         Text='<%# Eval("date_insert") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:CommandField SelectText="نمایش و ویرایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <EmptyDataTemplate>
                                             هیچ باغی به ثبت نرسیده است.
                                         </EmptyDataTemplate>
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
                                     <asp:SqlDataSource ID="SqlDataSource_bagh" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:Amlak %>" SelectCommand="SELECT       melk_baghe.ID,ostan.name, shahr.name AS Expr1, melk_baghe.rosta, melk_baghe.metrazh, melk_baghe.type, melk_baghe.aj_fo, melk_baghe.ghaimat, 
                         melk_baghe.date_insert
FROM            melk_baghe INNER JOIN
                         ostan ON melk_baghe.ID_ostan = ostan.ID INNER JOIN
                         shahr ON melk_baghe.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan

ORDER BY  melk_baghe.date_insert DESC"></asp:SqlDataSource>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <hr style="color: #99CCFF; font-size: medium;" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <div align="center" dir="rtl" 
                                         style="font-weight: 700; font-size: small; color: #FFFFFF">
                                         لیست ویلاهای ثبت شده</div>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:GridView ID="GridView_vila" runat="server" AllowPaging="True" 
                                         AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                                         DataSourceID="SqlDataSource_vila" ForeColor="#333333" GridLines="None" 
                                         Width="100%" onselectedindexchanged="GridView_vila_SelectedIndexChanged" 
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
                                             <asp:CommandField SelectText="نمایش و ویرایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <EmptyDataTemplate>
                                             هیچ ویلایی به ثبت نرسیده است.
                                         </EmptyDataTemplate>
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
                                     <asp:SqlDataSource ID="SqlDataSource_vila" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:Amlak %>" SelectCommand="SELECT      melk_vila.ID,  ostan.name, shahr.name AS Expr1, melk_vila.metrazh, melk_vila.age, melk_vila.state, melk_vila.aj_fo, melk_vila.ghaimat, melk_vila.date_insert
FROM            melk_vila INNER JOIN
                         ostan ON melk_vila.ID_ostan = ostan.ID INNER JOIN
                         shahr ON melk_vila.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan

ORDER BY melk_vila.date_insert DESC"></asp:SqlDataSource>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <hr style="color: #99CCFF; font-size: medium;" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <div align="center" dir="rtl" 
                                         style="font-weight: 700; font-size: small; color: #FFFFFF">
                                         لیست زمین های ثبت شده</div>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <asp:GridView ID="GridView_zamin" runat="server" AllowPaging="True" 
                                         AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" 
                                         DataSourceID="SqlDataSource_zamin" ForeColor="#333333" GridLines="None" 
                                         Width="100%" onselectedindexchanged="GridView_zamin_SelectedIndexChanged" 
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
                                             <asp:CommandField SelectText="نمایش و ویرایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <EmptyDataTemplate>
                                             هیچ زمینی به ثبت نرسیده است.
                                         </EmptyDataTemplate>
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
                                     <asp:SqlDataSource ID="SqlDataSource_zamin" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:Amlak %>" SelectCommand="SELECT       melk_zamin.ID, ostan.name, shahr.name AS Expr1, melk_zamin.metrazh, melk_zamin.ghaimat, melk_zamin.state, melk_zamin.type, melk_zamin.date_insert
FROM            melk_zamin INNER JOIN
                         ostan ON melk_zamin.ID_ostan = ostan.ID INNER JOIN
                         shahr ON melk_zamin.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan

ORDER BY melk_zamin.date_insert DESC"></asp:SqlDataSource>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <hr style="color: #99CCFF; font-size: medium;" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <div align="center" dir="rtl" 
                                         style="font-weight: 700; font-size: small; color: #FFFFFF">
                                         لیست خانه های ثبت شده</div>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     
                                     <asp:GridView ID="GridView_khaneh" runat="server" AllowPaging="True" 
                                         AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource_khaneh" 
                                         ForeColor="#333333" GridLines="None" Width="100%" DataKeyNames="ID" 
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
                                             <asp:CommandField SelectText="نمایش و ویرایش اطلاعات" ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <EmptyDataTemplate>
                                             هیچ خانه ای به ثبت نرسیده است.
                                         </EmptyDataTemplate>
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
                                     <asp:SqlDataSource ID="SqlDataSource_khaneh" runat="server" 
                                         ConnectionString="<%$ ConnectionStrings:Amlak %>" SelectCommand="SELECT        melk_house.ID,ostan.name, shahr.name AS Expr1, melk_house.metrazh, melk_house.age, melk_house.state, melk_house.ghaimat, melk_house.aj_fo, melk_house.type, 
                         melk_house.date_insert
FROM            melk_house INNER JOIN
                         ostan ON melk_house.ID_ostan = ostan.ID INNER JOIN
                         shahr ON melk_house.ID_shahr = shahr.ID AND ostan.ID = shahr.ID_ostan
ORDER BY  melk_house.date_insert  DESC"></asp:SqlDataSource>
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     <hr style="color: #99CCFF; font-size: medium;" />
                                 </td>
                             </tr>
                             <tr>
                                 <td>
                                     &nbsp;</td>
                             </tr>
                             <tr>
                                 <td>
                                     
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
