<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.2.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web" TagPrefix="dx" %>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>How to use the AdjustSize client method to recalculate the size of ASPxPageControl (also applies to ASPxPopupControl and ASPxDropDownEdit)</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Click the Edit link or a pager button within the ASPxGridView. As a result, the grid changes its size, and the ASPxPageControl's size is adjusted in response.<br />
        <br />
        <dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="0" ClientInstanceName="ASPxPageControl1"
                TabPosition="Left">
            <TabPages>
                <dx:TabPage Text="Categories">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False"
                                    DataSourceID="AccessDataSource1" KeyFieldName="CategoryID" Width="480px">
                                    <ClientSideEvents EndCallback="function(s, e) {ASPxPageControl1.AdjustSize();}" />
                                    <Columns>
                                        <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                                        <dx:GridViewDataTextColumn FieldName="CategoryID" ReadOnly="True" VisibleIndex="1">
                                            <EditFormSettings Visible="False" />
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="CategoryName" VisibleIndex="2">
                                        </dx:GridViewDataTextColumn>
                                        <dx:GridViewDataTextColumn FieldName="Description" VisibleIndex="3">
                                        </dx:GridViewDataTextColumn>
                                    </Columns>
                                    <SettingsPager PageSize="5">
                                    </SettingsPager>
                            </dx:ASPxGridView>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
                <dx:TabPage Text="Customers">
                    <ContentCollection>
                        <dx:ContentControl runat="server">
                            <dx:ASPxGridView ID="ASPxGridView2" runat="server"
                                AutoGenerateColumns="False" DataSourceID="AccessDataSource2" KeyFieldName="CustomerID"
                                Width="655px">
                                <ClientSideEvents EndCallback="function(s, e) {ASPxPageControl1.AdjustSize();}" />
                                <Columns>
                                    <dx:GridViewCommandColumn VisibleIndex="0" ShowEditButton="True"/>
                                    <dx:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="1">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="2">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="3">
                                    </dx:GridViewDataTextColumn>
                                    <dx:GridViewDataTextColumn FieldName="ContactTitle" VisibleIndex="4">
                                    </dx:GridViewDataTextColumn>
                                </Columns>
                                <SettingsPager PageSize="5">
                                </SettingsPager>
                            </dx:ASPxGridView>
                        </dx:ContentControl>
                    </ContentCollection>
                </dx:TabPage>
            </TabPages>
        
        
        </dx:ASPxPageControl>
        <br />
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
                SelectCommand="SELECT [CategoryID], [CategoryName], [Description] FROM [Categories]">
            </asp:AccessDataSource>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/nwind.mdb"
                SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [ContactTitle] FROM [Customers]">
            </asp:AccessDataSource>        
    </div>
    </form>
</body>
</html>
