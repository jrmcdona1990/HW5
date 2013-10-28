<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="Recipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css" /> 
    
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
    
        <h1 class="auto-style1" style="text-align: center">Wicked Easy Recipes</h1>
        <h3 style="text-align: center">Using 5 Ingredients or Less!</h3>
        <p class="auto-style1" style="text-align: center">
            <strong><a href = "Default.aspx"> Home</a> |<a href= "NewRecipe.aspx"> New Recipes </a> |<a href= "AboutUS.aspx"> About Us</a> |<a href= "Contact.aspx"> Contact </a>|</strong></p>
        <p class="auto-style1" style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CS_HW5 %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([Receipe], [SubmittedBy], [Ingredients1], [Ingredients2], [Ingredients3], [Ingredients4], [Ingredients5], [Preperation], [Notes]) VALUES (@Receipe, @SubmittedBy, @Ingredients1, @Ingredients2, @Ingredients3, @Ingredients4, @Ingredients5, @Preperation, @Notes)" SelectCommand="SELECT * FROM [Table] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Table] SET [Receipe] = @Receipe, [SubmittedBy] = @SubmittedBy, [Ingredients1] = @Ingredients1, [Ingredients2] = @Ingredients2, [Ingredients3] = @Ingredients3, [Ingredients4] = @Ingredients4, [Ingredients5] = @Ingredients5, [Preperation] = @Preperation, [Notes] = @Notes WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Receipe" Type="String" />
                    <asp:Parameter Name="SubmittedBy" Type="String" />
                    <asp:Parameter Name="Ingredients1" Type="String" />
                    <asp:Parameter Name="Ingredients2" Type="String" />
                    <asp:Parameter Name="Ingredients3" Type="String" />
                    <asp:Parameter Name="Ingredients4" Type="String" />
                    <asp:Parameter Name="Ingredients5" Type="String" />
                    <asp:Parameter Name="Preperation" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Receipe" Type="String" />
                    <asp:Parameter Name="SubmittedBy" Type="String" />
                    <asp:Parameter Name="Ingredients1" Type="String" />
                    <asp:Parameter Name="Ingredients2" Type="String" />
                    <asp:Parameter Name="Ingredients3" Type="String" />
                    <asp:Parameter Name="Ingredients4" Type="String" />
                    <asp:Parameter Name="Ingredients5" Type="String" />
                    <asp:Parameter Name="Preperation" Type="String" />
                    <asp:Parameter Name="Notes" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p class="auto-style1" style="text-align: center">
            <asp:DetailsView 
                ID="DetailsView1" 
                runat="server" 
                AutoGenerateRows="False" 
                DataKeyNames="Id" 
                DataSourceID="SqlDataSource1" 
                Height="50px" 
                Width="400px"
                CssClass="cssgridview"
                HeaderStyle-CssClass="header"
                FieldHeaderStyle-CssClass="fieldheader"
                ItemStyle-CssClass="item"
                AlternatingRowStyle-CssClass="altrow"
                CommandRowStyle-CssClass="command"
                PagerStyle-CssClass="pager"        
                
                >
                <Fields>
                    <asp:BoundField DataField="Receipe" HeaderText="Recipe" SortExpression="Receipe" />
                    <asp:BoundField DataField="SubmittedBy" HeaderText="Submitted By" SortExpression="SubmittedBy" />
                    <asp:BoundField DataField="Ingredients1" HeaderText="Ingredients 1" SortExpression="Ingredients1" />
                    <asp:BoundField DataField="Ingredients2" HeaderText="Ingredients 2" SortExpression="Ingredients2" />
                    <asp:BoundField DataField="Ingredients3" HeaderText="Ingredients 3" SortExpression="Ingredients3" />
                    <asp:BoundField DataField="Ingredients4" HeaderText="Ingredients 4" SortExpression="Ingredients4" />
                    <asp:BoundField DataField="Ingredients5" HeaderText="Ingredients 5" SortExpression="Ingredients5" />
                    <asp:BoundField DataField="Preperation" HeaderText="Preperation" SortExpression="Preperation" />
                    <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
                </Fields>
            </asp:DetailsView>
        </p>
    
    </div>
        <div class="auto-style2">
            <br />
            <br />
            <h6>©&nbsp;2013.&nbsp;6K:183&nbsp;Software&nbsp;Design&nbsp;&amp;&nbsp;Development</h6>
        </div>
    </form>
</body>
</html>
