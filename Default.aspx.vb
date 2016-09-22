Imports MySql.Data.MySqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Dim strQuery As String = "select Name, Content_Type, Data from report where id=@id and f_name=@fname"
        Dim cmd As MySqlCommand = New MySqlCommand(strQuery)
        cmd.Parameters.Add("@id", MySqlDbType.VarChar).Value = Me.rid1.Text
        cmd.Parameters.Add("@fname", MySqlDbType.VarChar).Value = Me.first_name.Text
        Me.rid1.Text = ""
        Me.first_name.Text = ""
        Dim dt As DataTable = GetData(cmd)
        If dt IsNot Nothing Then
            download(dt)
        End If

    End Sub
    Public Function GetData(ByVal cmd As MySqlCommand) As DataTable
        Dim dt As New DataTable

        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Dim sda As New MySqlDataAdapter
        cmd.CommandType = CommandType.Text
        cmd.Connection = con
        Try
            con.Open()
            sda.SelectCommand = cmd
            sda.Fill(dt)
            Return dt
        Catch ex As Exception
            Response.Write(ex.Message)
            Return Nothing
        Finally
            con.Close()
            sda.Dispose()
            con.Dispose()
        End Try
    End Function
    Protected Sub download(ByVal dt As DataTable)
        Dim bytes() As Byte = CType(dt.Rows(0)("Data"), Byte())
        Response.Buffer = True
        Response.Charset = ""
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.ContentType = dt.Rows(0)("Content_Type").ToString()
        Response.AddHeader("content-disposition", "attachment;filename=" & dt.Rows(0)("Name").ToString())
        Response.BinaryWrite(bytes)
        Response.Flush()
        Response.End()
    End Sub
End Class
