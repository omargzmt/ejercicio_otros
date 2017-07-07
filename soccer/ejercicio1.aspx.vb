Imports System.Linq

Public Class ejercicio1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim ds As New DataSet
            ds.ReadXml(MapPath("~/App_Data/soccer.xml"))

            If ds.Tables.Count > 0 Then
                gv_torneos.DataSource = ds.Tables("category")
                gv_torneos.DataBind()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub gv_torneos_SelectedIndexChanged(sender As Object, e As EventArgs)
        Try
            Dim id As String = gv_torneos.DataKeys(gv_torneos.SelectedIndex).Value.ToString
            Dim xdoc As XDocument = XDocument.Load(MapPath("~/App_Data/soccer.xml"))


            Dim matches = From x In xdoc.Root.Elements("category") Where x.Attribute("gid").Value = id

            'Dim result = From y In temp.[Single]().Element("Products").Elements("Product") New With { _
            ' Key .Id = y.Attribute("id").Value, _
            ' Key .Name = y.Attribute("Name").Value _
            '}


            Dim partidos = From y In matches.Single().Element("matches").Elements("match") Select New With { _
                    Key .formatted_date = y.Attribute("formatted_date").Value & " " & y.Attribute("time").Value, _
                    Key .time = y.Attribute("time").Value, _
                    Key .status = y.Attribute("status").Value, _
                    Key .localteam = y.Element("localteam").Attribute("name").Value, _
                    Key .visitorteam = y.Element("visitorteam").Attribute("name").Value, _
                    Key .goals = y.Element("localteam").Attribute("goals").Value, _
                    Key .goals1 = y.Element("visitorteam").Attribute("goals").Value
                   }

            gv_partidos.DataSource = partidos
            gv_partidos.DataBind()

        Catch ex As Exception

        End Try
    End Sub


End Class