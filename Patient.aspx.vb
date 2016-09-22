Imports MySql.Data.MySqlClient
Partial Class Patient
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Try
            con.Open()
            Dim cmd As MySqlCommand = New MySqlCommand("select P-id,R-id from patient")
            Dim rs As MySqlDataReader = cmd.ExecuteReader
            rs.Read()
            Me.rid.Text = rs("P_id")
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Try
            con.Open()
            Dim cmd As MySqlCommand = New MySqlCommand("insert into preports values('" & Me.rid.Text & "','" & Me.name.Text & "'," & True & ")", con)
            cmd.ExecuteNonQuery()
            Response.Redirect("Patient.aspx")
        Catch ex As Exception

        End Try
    End Sub
End Class
