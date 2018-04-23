using DevExpress.Web.Office;
using DevExpress.XtraRichEdit;
using System;
using System.IO;

public partial class _Default : System.Web.UI.Page {
    string documentId = "docId";
    protected void Page_Load(object sender, EventArgs e) {
        if(!IsPostBack) {
            using(MemoryStream stream = new MemoryStream()) {
                RichEditDocumentServer server = new RichEditDocumentServer();
                server.CreateNewDocument();
                for(int i = 0; i < 50; i++)
                    server.Document.AppendText("Some text. ");
                server.SaveDocument(stream, DocumentFormat.OpenXml);
                stream.Position = 0;
                DocumentManager.CloseDocument(documentId);
                RichEdit.Open(documentId, DocumentFormat.OpenXml, () => stream);
            }
            RichEdit.Focus();
        }
    }
}