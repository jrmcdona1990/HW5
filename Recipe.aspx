<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            text-decoration: underline;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1" style="text-align: center">Wicked Easy Recipes</h1>
        <h3 style="text-align: center">Using 5 Ingredients or Less!</h3>
        <p class="auto-style1" style="text-align: center">
            <strong><a href = "Default.aspx"> Home</a> |<a href= "NewRecipe.asp"> New Recipes </a> |<a href= "AboutUS.asp"> About Us</a> |<a href= "Contact.asp"> Contact </a>|</strong></p>
        <p class="auto-style1" style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" SelectCommand="SELECT [Recipie ] AS Recipie_, [SubmittedBy], [Ingredient1], [Ingredient2], [Ingredient3], [Ingredient4], [Ingredient5], [Prepration], [Notes ] AS Notes_, [RecipeID] FROM [Table]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RecipeID" DataSourceID="SqlDataSource1" Height="417px" Width="964px">
                <Columns>
                    <asp:BoundField DataField="Recipie_" HeaderText="Recipe" SortExpression="Recipie_" />
                    <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                    <asp:BoundField DataField="Ingredient1" HeaderText="Ingredient 1" SortExpression="Ingredient1" />
                    <asp:BoundField DataField="Ingredient2" HeaderText="Ingredient 2" SortExpression="Ingredient2" />
                    <asp:BoundField DataField="Ingredient3" HeaderText="Ingredient 3" SortExpression="Ingredient3" />
                    <asp:BoundField DataField="Ingredient4" HeaderText="Ingredient 4" SortExpression="Ingredient4" />
                    <asp:BoundField DataField="Ingredient5" HeaderText="Ingredient 5" SortExpression="Ingredient5" />
                    <asp:BoundField DataField="Prepration" HeaderText="Prepration" SortExpression="Prepration" />
                    <asp:BoundField DataField="Notes_" HeaderText="Notes" SortExpression="Notes_" />
                </Columns>
            </asp:GridView>
        </p>
    
    </div>
        <div class="auto-style2">
            <asp:Button ID="Button1" runat="server" Text="Edit " />
            <asp:Button ID="Button2" runat="server" Text="Delete" />
            <br />
            <br />
            <h6>©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
        </div>
    </form>
</body>
</html>
