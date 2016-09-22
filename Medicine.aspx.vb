
Imports MySql.Data.MySqlClient
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub button1_click(sender As Object, e As EventArgs) Handles add.Click
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Try
            con.Open()
            Dim x As Integer
            Dim cmd As MySqlCommand = New MySqlCommand("update stock set quantity='" & Me.q.Text & "', batch_no='" & Me.bno.Text & "',expiry_date='" & Me.exp.Text & "',mrp='" & Me.mrp.Text & "',s_rate='" & Me.srate.Text & "',vat='" & Me.vat.Text & "',amount='" & Me.amt.Text & "',purchased_from='" & Me.pfrom.Text & "',dated='" & Me.date.Text & "',tin_no='" & Me.tn.Text & "', flag=" & True & " where name_of_drug='" & Me.nod.Text & "'", con)
            x = cmd.ExecuteNonQuery


            If (x = 0) Then
                cmd.CommandText = "select max(s_no) from stock"
                Dim rs As MySqlDataReader
                rs = cmd.ExecuteReader
                Dim sn As Integer
                rs.Read()
                sn = rs(0) + 1
                con.Close()
                con.Open()
                cmd.CommandText = "insert into stock values(" & sn & ",'" & Me.nod.Text & "','" & Me.q.Text & "','" & Me.bno.Text & "','" & Me.exp.Text & "','" & Me.mrp.Text & "','" & Me.srate.Text & "','" & Me.vat.Text & "','" & Me.amt.Text & "','" & Me.pfrom.Text & "','" & Me.date.Text & "','" & Me.tn.Text & "'," & True & ")"
                cmd.Connection = con
                cmd.ExecuteNonQuery()
                con.Close()
            End If
        Catch ex As Exception

        End Try
        Response.Redirect("Medicine.aspx")
    End Sub
End Class
