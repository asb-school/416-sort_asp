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

            
            
            // 
            // GET NUMBER OF ITEMS
            
            if (Session["state"] == null)
            {
                Session["state"] = "start";
                %>
                <form id="get_num_items" action="sort.aspx?new_state=input_items" runat="server">
                    <label>How many items do you want to sort?</label>
                    <asp:TextBox ID="num_items" runat="server"></asp:TextBox>

                    <asp:Button ID="submit3" Text="Submit" runat="server" />
                </form>
                <%   
            }
            
            
            //
            // INPUT ITEMS
            if (Session["state"] == "input_items")
            {
                %>
        <p>The number of items is: <%: num_items.Text %></p>
                <form id="input_items" action="sort.aspx?new_state=list_items" runat="server">
                    <% 
                       int givenNumItems = Convert.ToInt32(num_items.Text);
                       for (int i = 1; i <= givenNumItems; i++)
                       {
                           String itemString = "item" + i.ToString(); 
                          %>

                        <label>Item <%:i %></label>
                       

                      <% }  %>

                        <asp:Button ID="submit2" Text="Submit" runat="server" />
                </form>
                <%
            }
            
            
        %>
           

        <% 
            if(IsPostBack)
            {
                // Set new session state
                if (Request["new_state"] != null)
                {
                    Session["state"] = Request["new_state"];
                }
            }
        %>

        <p>Variable new_state is <%= Request["new_state"] == null ? "not set" : Request["new_state"] %></p>

    </form>
</body>
</html>
