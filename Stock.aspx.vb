
Imports MySql.Data.MySqlClient
Imports System.Data

Partial Class Stock
    Inherits System.Web.UI.Page
    Private scon As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;Convert Zero Datetime=True;")
    Private htmlTable As New StringBuilder()
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Using scmd As New MySqlCommand()
                scmd.Connection = scon
                scmd.CommandType = CommandType.Text
                scmd.CommandText = "SELECT * FROM stock where flag=" & True & ""
                scon.Open()
                Dim articleReader As MySqlDataReader = scmd.ExecuteReader()
                htmlTable.Append("<table border='3'>")
                htmlTable.Append("<tr><th>S No.</th><th>Name of drug</th><th>Quantity</th><th>Batch No.</th><th>Expiry Date</th><th>M.R.P</th><th>S.Rate</th><th>VAT</th><th>Amount</th><th>Purchased From</th><th>Dated</th><th>Tin No.</th></tr>")

                If articleReader.HasRows Then
                    While articleReader.Read()
                        htmlTable.Append("<tr>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("s_no")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("name_of_drug")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("quantity")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("Batch_no")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("expiry_date")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("mrp")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("s_rate")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("vat")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("amount")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("purchased_from")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("dated")) & "</td>")
                        htmlTable.Append("<td>" & Convert.ToString(articleReader("tin_no")) & "</td>")
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