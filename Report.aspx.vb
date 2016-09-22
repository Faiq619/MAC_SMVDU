Imports MySql.Data.MySqlClient
Imports System.IO
Imports System.Data
Partial Class Report
    Inherits System.Web.UI.Page
    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        ' Read the file and convert it to Byte Array
        Dim filePath As String = FileUpload1.PostedFile.FileName
        Dim filename As String = Path.GetFileName(filePath)
        Dim ext As String = Path.GetExtension(filename)
        Dim contenttype As String = String.Empty

        'Set the contenttype based on File Extension
        Select Case ext
            Case ".doc"
                contenttype = "application/vnd.ms-word"
                Exit Select
            Case ".docx"
                contenttype = "application/vnd.ms-word"
                Exit Select
            Case ".xls"
                contenttype = "application/vnd.ms-excel"
                Exit Select
            Case ".xlsx"
                contenttype = "application/vnd.ms-excel"
                Exit Select
            Case ".jpg"
                contenttype = "image/jpg"
                Exit Select
            Case ".png"
                contenttype = "image/png"
                Exit Select
            Case ".gif"
                contenttype = "image/gif"
                Exit Select
            Case ".pdf"
                contenttype = "application/pdf"
                Exit Select
        End Select
        If contenttype <> String.Empty Then
            Dim fs As Stream = FileUpload1.PostedFile.InputStream
            Dim br As New BinaryReader(fs)
            Dim bytes As Byte() = br.ReadBytes(fs.Length)

            'insert the file into database
            Dim strQuery As String = "insert into report" _
            & "(id,name,Content_Type,data,f_name)" _
            & " values (@id,@Name, @ContentType, @Data, @f_name)"
            Dim cmd As New MySqlCommand(strQuery)
            Dim x As Integer = 0
            cmd.Parameters.Add("@id", MySqlDbType.VarChar).Value = Me.rid.Text
            cmd.Parameters.Add("@Name", MySqlDbType.VarChar).Value = filename
            cmd.Parameters.Add("@ContentType", MySqlDbType.VarChar).Value _
            = contenttype
            cmd.Parameters.Add("@f_name", MySqlDbType.VarChar).Value = Me.name.Text
            cmd.Parameters.Add("@Data", MySqlDbType.Binary).Value = bytes
            InsertUpdateData(cmd)
            ' lblMessage.ForeColor = System.Drawing.Color.Green
            'lblMessage.Text = "File Uploaded Successfully"
            'ClientScript.RegisterOnSubmitStatement(Me.GetType(), "alert", "alert('file uploaded successfully'));")
            Response.Redirect("report.aspx")
        Else
            lblMessage.ForeColor = System.Drawing.Color.Red
            lblMessage.Text = "File format not recognised." _
            & " Upload Image/Word/PDF/Excel formats"
        End If

    End Sub
    Public Function InsertUpdateData(ByVal cmd As MySqlCommand) As Boolean
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        cmd.CommandType = CommandType.Text
        cmd.Connection = con
        Try
            con.Open()
            cmd.ExecuteNonQuery()

        Catch ex As Exception
            Response.Write(ex.Message)
            Return False
        Finally
            con.Close()

        End Try
        Try
            con.Open()
            cmd.CommandText = "update preports set flag=" & False & " where ID='" & Me.rid.Text & "'"
            cmd.ExecuteNonQuery()
            Return True
        Catch ex As Exception
            Response.Write(ex.Message)
            Return False
        Finally
            con.Close()
        End Try
       
    End Function
End Class
