<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageUser.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">User Profile 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
              Manage User Profile 
            </button>
    </h6>
  </div>
  <br>
   <div class="container"> 
            <div class="col-xl-6 col-lg-6 col-md-6">
                <form id="form1" runat="server">

		                    <div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Enter User ID..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user" placeholder="Enter Email..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-user" TextMode="Password" placeholder="Enter Password..."></asp:TextBox>
            			    </div>

                            <asp:Button ID="Button1" runat="server" 
                                class="btn btn-primary btn-user btn-block" Text="Submit" 
                                onclick="Button1_Click" />
                            <div class="text-center">
                                <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                                <br />
                            </div>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3" Width="876px" HorizontalAlign="Justify" >
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("id") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Name">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("name") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Password">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("password") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" class="btn btn-danger" runat="server" Text="Delete" 
                                                CommandArgument='<%# Eval("id") %>' onclick="Button2_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" class="btn btn-success" runat="server" Text="Edit" 
                                                CommandArgument='<%# Eval("id") %>' onclick="Button3_Click"/>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            
                    		<hr>
                            <br />
        		</form>
            </div>
    </div>
    <br />
</asp:Content>

