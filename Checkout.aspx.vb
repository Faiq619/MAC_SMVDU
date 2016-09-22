Imports MySql.Data.MySqlClient
Partial Class Checkout
    Inherits System.Web.UI.Page
    Public Shared m As Decimal
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        D1.Items.Add("--select--")
        If Not IsPostBack Then
            Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
            Try
                con.Open()
                Dim cmd As MySqlCommand = New MySqlCommand("select name_of_drug from stock where flag=" & True & "", con)
                Dim rs As MySqlDataReader = cmd.ExecuteReader
                While (rs.Read)
                    Me.D1.Items.Add(rs("name_of_drug"))
                End While
                Me.D1.DataBind()
                con.Close()

            Catch ex As Exception

            End Try
        End If
        Return
    End Sub

    Protected Sub D1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles D1.SelectedIndexChanged
        mrp.Text = "hghghj"
        D2.Items.Clear()
        D2.Items.Add("--select--")
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
            Try
                con.Open()
            Dim cmd As MySqlCommand = New MySqlCommand("select quantity,mrp from stock where name_of_drug='" & D1.SelectedValue & "'", con)
            Dim rs As MySqlDataReader = cmd.ExecuteReader
            rs.Read()
            m = rs("mrp")
            Dim x As Integer = rs("quantity")
                'mrp.Text = CStr(x)
                Dim y As Integer = x
                While (x <> -1)
                    D2.Items.Add(x)
                    x = x - 1
                End While


            Catch ex As Exception
                mrp.Text = ex.Message
            End Try

        con.Close()
        Return
    End Sub

    Protected Sub D2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles D2.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl3_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        mrp.Text = ""
        D2.Items.Clear()
        D2.Items.Add("--select--")
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Try
            con.Open()
            Dim cmd As MySqlCommand = New MySqlCommand("select quantity,mrp from stock where name_of_drug='" & D1.SelectedValue & "'", con)
            Dim rs As MySqlDataReader = cmd.ExecuteReader
            rs.Read()
            m = rs("mrp")
            Dim x As Integer = rs("quantity")
            'mrp.Text = CStr(x)
            Dim y As Integer = x
            While (x <> -1)
                D2.Items.Add(x)
                x = x - 1
            End While


        Catch ex As Exception
            mrp.Text = ex.Message
        End Try

        con.Close()
        Return
    End Sub
    Protected Sub Ddl4_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl5_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList3.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl6_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList4.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl7_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList5.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl8_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList6.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl9_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList7.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl10_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList8.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl11_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList9.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub Ddl12_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList10.SelectedIndexChanged
        mrp.Text = D2.SelectedValue * m
    End Sub
    Protected Sub btn_click(sender As Object, e As EventArgs) Handles submit.Click
        Dim con As New MySqlConnection("host=127.0.0.1;database=medicine;username=faiq;password=tKPDjURTmGAG3wNu;")
        Try
            con.Open()
            Dim cmd As MySqlCommand = New MySqlCommand("update stock set quantity=quantity-'" & Me.D2.SelectedValue & "' where name_of_drug='" & Me.D1.SelectedValue & "'", con)
            cmd.ExecuteNonQuery()
            con.Close()
        Catch ex As Exception

        End Try
    End Sub


End Class
