<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="sql_recipes" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [natoli_HW6]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sql_recipes">
            <Columns>
                <asp:BoundField DataField="recipe_ID" HeaderText="recipe_ID" InsertVisible="False" ReadOnly="True" SortExpression="recipe_ID" />
                <asp:BoundField DataField="recipe_Name" HeaderText="recipe_Name" SortExpression="recipe_Name" />
                <asp:BoundField DataField="submitted_By" HeaderText="submitted_By" SortExpression="submitted_By" />
                <asp:BoundField DataField="Ingredient_1" HeaderText="Ingredient_1" SortExpression="Ingredient_1" />
                <asp:BoundField DataField="Ingredient_2" HeaderText="Ingredient_2" SortExpression="Ingredient_2" />
                <asp:BoundField DataField="Ingredient_3" HeaderText="Ingredient_3" SortExpression="Ingredient_3" />
                <asp:BoundField DataField="Ingredient_4" HeaderText="Ingredient_4" SortExpression="Ingredient_4" />
                <asp:BoundField DataField="Ingredient_5" HeaderText="Ingredient_5" SortExpression="Ingredient_5" />
                <asp:BoundField DataField="Preparation" HeaderText="Preparation" SortExpression="Preparation" />
                <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
