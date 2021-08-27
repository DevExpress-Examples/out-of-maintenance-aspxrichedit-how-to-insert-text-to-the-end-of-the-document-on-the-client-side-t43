<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128545418/16.1.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T439264)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxRichEdit - How to insert text to the end of the document on the client side
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t439264/)**
<!-- run online end -->


The <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.ASPxRichEdit.class">ASPxRichEdit</a> control is shipped with the <a href="https://documentation.devexpress.com/AspNet/116405/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API">client API</a> allowing you to manipulate with document content on the client side. The client API includes <a href="https://documentation.devexpress.com/AspNet/117665/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Document-Model-Information">document API</a>, <a href="https://documentation.devexpress.com/AspNet/117666/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Client-Selection">selection API</a> and <a href="https://documentation.devexpress.com/AspNet/117668/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Client-Commands">client commands</a>:<br><br>- The <a href="https://documentation.devexpress.com/AspNet/117665/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Document-Model-Information">document API</a> provides resources for receiving the current information about document structural elements.<br>- The <a href="https://documentation.devexpress.com/AspNet/117666/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Client-Selection">selection API</a> provides resources for positioning the cursor and select elements within a document.<br>- The <a href="https://documentation.devexpress.com/AspNet/117668/ASP-NET-WebForms-Controls/Rich-Text-Editor/Concepts/Client-API/Client-Commands">client commands</a> provide resources to modify the document content.<br><br>This example demonstrates how to insert text to the end of the document on the client side. The <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.ASPxRichEdit.class">ASPxRichEdit</a> includes a custom ribbon button: clicks on this item are processed using the <a href="https://documentation.devexpress.com/AspNet/DevExpress.Web.ASPxRichEdit.Scripts.ASPxClientRichEdit.CustomCommandExecuted.event">CustomCommandExecuted</a> client event. The event handler identifies the custom item via a command name and includes client commands and the selection API to insert text.

<br/>


