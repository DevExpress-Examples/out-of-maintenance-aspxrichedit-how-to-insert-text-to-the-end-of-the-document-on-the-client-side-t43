Imports DevExpress.Web.Office
Imports DevExpress.XtraRichEdit
Imports System
Imports System.IO

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Private documentId As String = "docId"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        If Not IsPostBack Then
            Using stream As New MemoryStream()

                Dim server_Renamed As New RichEditDocumentServer()
                server_Renamed.CreateNewDocument()
                For i As Integer = 0 To 49
                    server_Renamed.Document.AppendText("Some text. ")
                Next i
                server_Renamed.SaveDocument(stream, DocumentFormat.OpenXml)
                stream.Position = 0
                DocumentManager.CloseDocument(documentId)
                RichEdit.Open(documentId, DocumentFormat.OpenXml, Function() stream)
            End Using
            RichEdit.Focus()
        End If
    End Sub
End Class