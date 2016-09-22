Imports MySql.Data.MySqlClient
Public Class login
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Try
            con.Open()
            Dim cmd As MySqlCommand = New MySqlCommand("select * from login", con)
            Dim rs As MySqlDataReader
            rs = cmd.ExecuteReader
            While (rs.Read)
                If (Me.TextBox1.Text = rs("username") AndAlso rs("password") = Me.TextBox2.Text AndAlso rs("flag") = True) Then
                    If (rs("username") = "adminlab") Then
                        Response.Redirect("Report.aspx")
                    Else
                        Response.Redirect("Medicine.aspx")
                    End If
                Else
                    label.Visible = True
                    Me.TextBox1.Text = ""
                    Me.TextBox2.Text = ""
                End If
            End While
        Catch ex As Exception

        End Try
        con.Close()
    End Sub

End Class
