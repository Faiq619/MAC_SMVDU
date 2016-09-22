
Imports MySql.Data.MySqlClient
Imports System.Data

Partial Class UpReports
    Inherits System.Web.UI.Page
    Private scon As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
    Private htmlTable As New StringBuilder()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Using scmd As New MySqlCommand()
                scmd.Connection = scon
                scmd.CommandType = CommandType.Text
                scmd.CommandText = "SELECT id,name,f_name FROM Report"
                scon.Open()
                Dim articleReader As MySqlDataReader = scmd.ExecuteReader()
                htmlTable.Append("<table border='3'>")
                htmlTable.Append("<tr><th>ID</th><th>File Name</th><th>Patients Name</th></tr>")

                If articleReader.HasRows Then
                    While articleReader.Read()
                        htmlTable.Append("<tr>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("id")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("name")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("f_name")) & "</td>")
                        htmlTable.Append("</tr>")
                    End While
                    htmlTable.Append("</table>")

                    PlaceHolder1.Controls.Add(New Literal() With {
                    .Text = htmlTable.ToString()
                    })

                    articleReader.Close()
                    articleReader.Dispose()
                End If
            End Using
        End If
    End Sub
End Class