<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RecipeDetails.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/css/stylesheet.css" />
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [natoli_HW6] WHERE [recipe_ID] = @recipe_ID" InsertCommand="INSERT INTO [natoli_HW6] ([recipe_Name], [submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@recipe_Name, @submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [natoli_HW6] WHERE ([recipe_ID] = @recipe_ID)" UpdateCommand="UPDATE [natoli_HW6] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [recipe_ID] = @recipe_ID">
            <DeleteParameters>
                <asp:Parameter Name="recipe_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="recipe_Name" Type="String" />
                <asp:Parameter Name="submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="recipe_ID" QueryStringField="recipe_ID" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="recipe_Name" Type="String" />
                <asp:Parameter Name="submitted_By" Type="String" />
                <asp:Parameter Name="Ingredient_1" Type="String" />
                <asp:Parameter Name="Ingredient_2" Type="String" />
                <asp:Parameter Name="Ingredient_3" Type="String" />
                <asp:Parameter Name="Ingredient_4" Type="String" />
                <asp:Parameter Name="Ingredient_5" Type="String" />
                <asp:Parameter Name="Preparation" Type="String" />
                <asp:Parameter Name="Notes" Type="String" />
                <asp:Parameter Name="recipe_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <br />
        <h1>Wicked Easy Recipes</h1>
        <h2>Using 5 Ingredients or Less!</h2>
        <br />
        <br />
        <h4>
       <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp; |&nbsp;
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>&nbsp; |&nbsp;
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>&nbsp; |&nbsp;
       <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
        </h4>
    
    </div>
        <p>
          <asp:Label ID="lbl_deletedRecipe" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <h4>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipe_ID" DataSourceID="SqlDataSource1" Height="50px" Width="689px">
            <Fields>
                <asp:BoundField DataField="recipe_Name" HeaderText="Recipe Name" SortExpression="recipe_Name" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="submitted_By" HeaderText="Submitted By" SortExpression="submitted_By" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient #1" SortExpression="Ingredient_1" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient #2" SortExpression="Ingredient_2" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient #3" SortExpression="Ingredient_3" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient #4" SortExpression="Ingredient_4" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient #5" SortExpression="Ingredient_5" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" >
                <HeaderStyle BackColor="#FFFF99" ForeColor="DimGray" />
                <ItemStyle BackColor="LightCoral" />
                </asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />

            </Fields>
        </asp:DetailsView>
            
        <div id="footer">
            <p>&copy; 2014 Kyle Natoli - Assignment for Software Design and Development</p>

        </div>
            </h4>
    </form>
</body>
</html>
