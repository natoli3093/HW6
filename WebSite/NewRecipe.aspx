<%@ Page Language="VB" AutoEventWireup="false" CodeFile="NewRecipe.aspx.vb" Inherits="RecipeDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="~/css/stylesheet.css" />
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
    
        <br />
        <h1>Wicked Easy Recipes</h1>
        <h2>Using 5 Ingredients or Less!</h2><br />
        
    <h4>
       <asp:HyperLink ID="Home" runat="server" NavigateUrl="~/Default.aspx">Home</asp:HyperLink>&nbsp; |&nbsp;
       <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/NewRecipe.aspx">New Recipe</asp:HyperLink>&nbsp; |&nbsp;
       <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>&nbsp; |&nbsp;
       <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ContactUs.aspx">Contact</asp:HyperLink>
        </h4>
    </div>
        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="recipe_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="270px" Width="679px"
                cssclass="formview">
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
                                <asp:RequiredFieldValidator ID="rfv_recipename" runat="server" ControlToValidate="TextBox1" ErrorMessage="You Must Enter a Recipe Name!"></asp:RequiredFieldValidator>
                                <td>
                                    
                                    &nbsp;</td>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Submitted By:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("submitted_By") %>' />
                                <asp:RequiredFieldValidator ID="rfv_author" runat="server" ControlToValidate="TextBox2" ErrorMessage="You Must Enter the Author's Name!"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Ingredient #1:
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Ingredient_1") %>' />
                                <asp:RequiredFieldValidator ID="rfv_ingredient" runat="server" ControlToValidate="TextBox3" ErrorMessage="You Must Enter a Ingredient!"></asp:RequiredFieldValidator>
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
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox8" ErrorMessage="You Must Specify the Preparation!"></asp:RequiredFieldValidator>
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
                               <asp:Button ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Insert" Text="Save" /> 
                            </td>
                            <td>
                              
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
                <ItemTemplate>
                   
                </ItemTemplate>
            </asp:FormView>
        </p>
         <div id="footer">
            <p>&copy; 2014 Kyle Natoli - Assignment for Software Design and Development</p>
        </div>
    </form>
</body>
</html>
