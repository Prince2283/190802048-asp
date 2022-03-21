<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageContact.aspx.cs" Inherits="_Default" %>

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
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Enter FirstName..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user" placeholder="Enter LastName..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-user" TextMode="Password" placeholder="Enter Email..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox4" runat="server" 
                                    class="form-control form-control-user" TextMode="MultiLine" 
                                    placeholder="Enter Phone Number..." Rows="5"></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox5" runat="server" class="form-control form-control-user" TextMode="Password" placeholder="Enter Message..."></asp:TextBox>
            			    </div>

                            <asp:Button ID="Button1" runat="server" 
                                class="btn btn-primary btn-user btn-block" Text="Submit" 
                                onclick="Button1_Click"  />
                            
                    		<br />
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3">
                                <Columns>
                                    <asp:TemplateField HeaderText="Contact ID">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("ContactID") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="First Name">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal3" runat="server" Text="<%# Eval(fname) %>"></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Last Name">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("lname") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal5" runat="server" Text='<%# Eval("email") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="phone Number">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("phone") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Message">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("message") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" class="btn btn-danger" runat="server" 
                                                CommandArgument='<%# Eval("ContactID") %>' Text="Delete" 
                                                onclick="Button2_Click" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" class="btn btn-success" runat="server" 
                                                CommandArgument='<%# Eval("ContactID") %>' Text="Edit" 
                                                onclick="Button3_Click" />
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

