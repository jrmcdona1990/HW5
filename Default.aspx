<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1" style="text-align: center">Wicked Easy Recipes </h1>
        <h3 style="text-align: center">Using 5 Ingredients or Less!</h3>
        <p style="text-align: center">
            <strong><a href = "Default.aspx"> Home</a> |<a href= "NewRecipe.aspx"> New Recipes </a> |<a href= "AboutUS.aspx"> About Us </a> |<a href= "Contact.aspx"> Contact </a>|</strong></p>
        <p style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" SelectCommand="SELECT [Recipie ] AS Recipie_, [SubmittedBy], [RecipeID] FROM [Table]"></asp:SqlDataSource>
    
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecipeID" DataSourceID="SqlDataSource2" Height="228px" Width="565px">
                <Columns>
                    <asp:BoundField DataField="Recipie_" HeaderText="Recipe " SortExpression="Recipie_" />
                    <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                    <asp:HyperLinkField Text="Select" />
                </Columns>
            </asp:GridView>

        </p>
        <p style="text-align: center">
            &nbsp;</p>
        <h6 style="text-align: center">
            ©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
        <p style="text-align: center">
            &nbsp;</p>
    
    </div>
    </form>
</body>
</html>
