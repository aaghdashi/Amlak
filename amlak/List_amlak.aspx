<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="List_amlak.aspx.cs" Inherits="amlak.List_amlak" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA;
        width: 960px; float: right; position: relative; right: auto;" dir="rtl" align="right">
        <br />
        <hr style="color: #99CCFF; font-size: medium;" />
        <p>
            <span class="style1">*</span> کاربر گرامی در صورتی که میخواهید اطلاعات ملک مورد
            نظر خود را مشاهده کنید بعد از&nbsp; انتخاب نوع ملک ،لیست املاک مد نظر شما نمایش
            داده می شود..</p>
        <p>
            <span class="style1">*</span> برای مشاهده جزییات ملک مورد نظر بر روی&nbsp; 
            مشاهده جزییات کلیک کنید.</p>
        <br />        
                                     <div align="center" dir="rtl" 
                                         style="font-size: 15pt; color: #FFFFFF">
                                         نمایش ملک های ثبت شده بر اساس تاریخ ثبت</div>
                                
                                     <hr style="color: #99CCFF; font-size: medium;" />
                                 
        <div style="font-size: small; font-family: tahoma, arial; color: #333333; background-color: #6681BA;
            width: 960px; float: right; position: relative; right: auto;" dir="rtl" align="right">
            <div dir="rtl" align="center">
                <asp:LinkButton ID="LinkButton_bagh" runat="server" OnClick="LinkButton_bagh_Click">باغ</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton_zamin" runat="server" OnClick="LinkButton_zamin_Click">زمین</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton_vila" runat="server" OnClick="LinkButton_vila_Click">ویلا</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton_khaneh" runat="server" OnClick="LinkButton_khaneh_Click">خانه</asp:LinkButton>
                <hr style="color: #99CCFF; font-size: medium;" />
            </div>
            <div dir="rtl" align="center">
                <asp:MultiView ID="MultiView_melk" ActiveViewIndex="4" runat="server">
                    <asp:View ID="View_bagh" runat="server">
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
                    <asp:View ID="View_zamin" runat="server">
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
                    <asp:View ID="View_vila" runat="server">
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
                    <asp:View ID="View_khaneh" runat="server">
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
                    <asp:View ID="View_Show_bagh" runat="server">
                        <div style="border-style: solid">
                            <table style="width:100%;">
                             
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
                                                     <asp:Label ID="Label_bagh" runat="server" Text='<%# Eval("date_insert") %>'></asp:Label>
                                                 </ItemTemplate>
                                             </asp:TemplateField>
                                             <asp:CommandField SelectText="مشاهده جزییات " ShowSelectButton="True">
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
                         WHERE melk_baghe.permission = 'True'
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
                                        &nbsp;</td>
                                </tr>
                            
                            </table>
                        </div>
                    </asp:View>
                    <asp:View ID="View_Show_vila" runat="server">
                        <table width="100%">
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
                                         onrowdatabound="GridView_vila_RowDataBound" >
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
                                             <asp:CommandField SelectText="مشاهده جزییات " ShowSelectButton="True">
                                             <ControlStyle Font-Size="X-Small" ForeColor="Red" />
                                             </asp:CommandField>
                                         </Columns>
                                         <EditRowStyle BackColor="#999999" />
                                         <EmptyDataTemplate>
                                             هیچ ویلایی به ثبت نرسیده است.<br />
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
                         WHERE melk_vila.permission ='True'
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
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View_Show_zamin" runat="server">
                        <table width="100%">
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
                                         onrowdatabound="GridView_zamin_RowDataBound" >
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
                                             <asp:CommandField SelectText="مشاهده جزییات " ShowSelectButton="True">
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
                         WHERE melk_zamin.permission='True'
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
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </asp:View>
                    <asp:View ID="View_Show_khaneh" runat="server">
                        <table width="100%">
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
                                         onrowdatabound="GridView_khaneh_RowDataBound" >
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
                                             <asp:CommandField SelectText="مشاهده جزییات " ShowSelectButton="True">
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
                         WHERE melk_house.permission='True'

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
                    </asp:View>
                </asp:MultiView>
            </div>
        </div>
    </div>
</asp:Content>
