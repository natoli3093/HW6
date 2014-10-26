<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newrecipe.aspx.vb" Inherits="details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_detailsview" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [natoli_HW6] WHERE [recipe_ID] = @recipe_ID" InsertCommand="INSERT INTO [natoli_HW6] ([recipe_Name], [submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@recipe_Name, @submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [natoli_HW6]" UpdateCommand="UPDATE [natoli_HW6] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [recipe_ID] = @recipe_ID">
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
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/newrecipe.aspx">Add a New Recipe</asp:HyperLink>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="recipe_ID" DataSourceID="sql_detailsview" DefaultMode="Insert" Height="50px" Width="381px">
            <Fields>
                <asp:BoundField DataField="recipe_Name" HeaderText="Recipe Name" SortExpression="recipe_Name" />
                <asp:BoundField DataField="submitted_By" HeaderText="Submitted By" SortExpression="submitted_By" />
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient #1" SortExpression="Ingredient_1" />
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient #2" SortExpression="Ingredient_2" />
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient #3" SortExpression="Ingredient_3" />
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient #4" SortExpression="Ingredient_4" />
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient #5" SortExpression="Ingredient_5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
    
    </div>
    </form>
</body>
</html>
