<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sort.aspx.cs" Inherits="sort_asp.sort" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <p>Hello</p>
    <form id="main_form" runat="server">
        <div>
            <p>Name: <asp:textbox id="name" runat="server"></asp:textbox></p>
            <p>Age: <asp:textbox id="age" runat="server"></asp:textbox></p>
            <p><asp:button ID="submit" text="Submit" runat="server" /></p>
        </div>
        <%
            //num_views++;
            if (Session["num_views"] == null)
            {
                Session["num_views"] = 0;
            }
            else
            {
                Session["num_views"] = (int)Session["num_views"] + 1;
            }

            if (Session["state"] == null)
            {
                Session["state"] = "start";
            }
            
            
            // This will not work by itself. It would in PHP :)
            //Session["num_views"] = (int)Session["num_views"] + 1;
        %>
           

        <% 
            if(IsPostBack)
            {
        %>
        <p>Hello <%= name.Text %></p>
        <p>Your age is <%= age.Text %></p>
        <p>Number of views is <%= Session["num_views"] %></p>
        <%
            }
        %>

        <p>Variable new_state is <%= Request["new_state"] == null ? "not set" : Request["new_state"] %></p>

    </form>
</body>
</html>
