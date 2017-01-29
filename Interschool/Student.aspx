<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Interschool.Student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:GridView ID="StudentGrid" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="161px" ShowFooter="True" Width="297px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:TemplateField HeaderText="StudentID" SortExpression="StudentID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("StudentID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("StudentID") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:LinkButton ValidationGroup="INSERT" OnClick="lbInsert_Click" ID="lbInsert" runat="server">Insert</asp:LinkButton>
                   <%-- <asp:RequiredFieldValidator ID="rfvEditVoornaam" runat="server" ErrorMessage="Voornaam is verplicht" 
                        ControlToValidate="Textbox1" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>   --%>
                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Voornaam" SortExpression="Voornaam">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Voornaam") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditVoornaam" runat="server" ErrorMessage="Voornaam is verplicht" 
                        ControlToValidate="Textbox1" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>                        



                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Voornaam") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>

                </FooterTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Achternaam" SortExpression="Achternaam">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Achternaam") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEditAchternaam" runat="server" ErrorMessage="Achternaam is verplicht" 
                        ControlToValidate="Textbox2" Text="*" ForeColor="Red">
                    </asp:RequiredFieldValidator>   
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Achternaam") %>'></asp:Label>
                </ItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtAchternaam" runat="server"></asp:TextBox>

                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InterschoolConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentID] = @StudentID" InsertCommand="INSERT INTO [Student] ([StudentID], [Voornaam], [Achternaam]) VALUES (@StudentID, @Voornaam, @Achternaam)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [Voornaam] = @Voornaam, [Achternaam] = @Achternaam WHERE [StudentID] = @StudentID">
        <DeleteParameters>
            <asp:Parameter Name="StudentID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="StudentID" Type="Int32" />
            <asp:Parameter Name="Voornaam" Type="String" />
            <asp:Parameter Name="Achternaam" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Voornaam" Type="String" />
            <asp:Parameter Name="Achternaam" Type="String" />
            <asp:Parameter Name="StudentID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
