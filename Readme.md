<!-- default badges list -->
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E1563)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
<!-- default file list end -->
# How to use the AdjustSize client method to recalculate the size of ASPxPageControl
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/e1563)**
<!-- run online end -->


<p>In order to recalculate the size of an ASPxPageControl after its active page's content size has been changed, the control's client <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxTabControlScriptsASPxClientTabControlBase_AdjustSizetopic">AdjustSize</a> method should be called. An ASPxGridView control, which is used  inside the ASPxPageControlin this example, can dynamically change its size (for instance, after clicking the Edit button or pager buttons), and we should resize the ASPxPageControl accordingly. For this purpose, grid resizing is caught within the grid's client EndCallback event, and the ASPxPageControl's client <a href="http://help.devexpress.com/#AspNet/DevExpressWebASPxTabControlScriptsASPxClientTabControlBase_AdjustSizetopic">AdjustSize</a> method is called there. Note that similar client methods are implemented within the ASPxPopupControl (the AdjustSize method) and the ASPxDropDownControl (the AdjustDropDownWindow method).</p>


<h3>Description</h3>

<p>From v2009 vol 3 the AdjustSize property is declared as obsolete. Please use the AdjustControl property instead.</p>

<br/>


