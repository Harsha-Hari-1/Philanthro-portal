﻿Imports System.Data.SqlClient
Imports System.Data
Public Class chartsample
    Inherits System.Web.UI.Page
    Dim co As philanthro = New philanthro
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            Dim query As String
            Dim userid As String = Session("user_id").ToString()
            query = "select donar.user_id,donar.name,dontoorg.donation_id,dontoorg.don_by,dontoorg.org_id,dontoorg.org_name,dontoorg.date,dontoorg.amount from donar join dontoorg on donar.user_id=dontoorg.don_by where dontoorg.don_by=" + userid
            Dim comn As SqlCommand = New SqlCommand(query, co.connect)
            Dim sqldaC As SqlDataAdapter = New SqlDataAdapter(comn)
            Dim ds As DataTable = New DataTable
            sqldaC.Fill(ds)
            'Dim ad As SqlDataAdapter = New SqlDataAdapter(cmd)
            'ad.Fill(ds)
            Chart1.DataSource = ds
            Chart1.DataBind()
        End If
        '    DataSet ds = new DataSet();  
        'SqlDataAdapter da = new SqlDataAdapter("select * from mcnemp", co.connect());  
        'da.Fill(ds);  
        'Chart1.DataSource = ds;  
    End Sub

End Class