<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipes.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [natoli_HW6] WHERE [recipe_ID] = @recipe_ID" InsertCommand="INSERT INTO [natoli_HW6] ([recipe_Name], [submitted_By], [Ingredient_1], [Ingredient_2], [Ingredient_3], [Ingredient_4], [Ingredient_5], [Preparation], [Notes]) VALUES (@recipe_Name, @submitted_By, @Ingredient_1, @Ingredient_2, @Ingredient_3, @Ingredient_4, @Ingredient_5, @Preparation, @Notes)" SelectCommand="SELECT * FROM [natoli_HW6]" UpdateCommand="UPDATE [natoli_HW6] SET [recipe_Name] = @recipe_Name, [submitted_By] = @submitted_By, [Ingredient_1] = @Ingredient_1, [Ingredient_2] = @Ingredient_2, [Ingredient_3] = @Ingredient_3, [Ingredient_4] = @Ingredient_4, [Ingredient_5] = @Ingredient_5, [Preparation] = @Preparation, [Notes] = @Notes WHERE [recipe_ID] = @recipe_ID">
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
    
    </div>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="270px" Width="343px">
                <EditItemTemplate>
                  
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table>
                        <tr>
                            <td>
                                Recipe Name:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("recipe_Name") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Submitted By:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_By") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Ingredient #1:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 Ingredient #2:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Ingredient_2") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 Ingredient #3:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Ingredient_3") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 Ingredient #4:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Ingredient_4") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                 Ingredient #5:
                            </td>
                            <td>
                                 <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Ingredient_5") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Preparation:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Preparation") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Notes:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Notes") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                               <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /> 
                            </td>
                            <td>
                                <asp:Button ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
                <ItemTemplate>
                   
                </ItemTemplate>
            </asp:FormView>
        </p>
    </form>
</body>
</html>
