<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageCategory.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Services Profile 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
              Manage Category Profile 
            </button>
    </h6>
  </div>
  <br>
   <div class="container"> 
            <div class="col-xl-6 col-lg-6 col-md-6">
                <form id="form1" runat="server">

		                    <div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Enter Category..."></asp:TextBox>
            			    </div>
                            <b><h2>Status:</h2></b>
                            <div class="form-group">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                                    RepeatDirection="Horizontal">
                                    <asp:ListItem Value="1">Activate</asp:ListItem>
                                    <asp:ListItem Value="0">Deactivate</asp:ListItem>
                                </asp:RadioButtonList>
                                <%--<asp:TextBox ID="TextBox3" runat="server" class="form-control form-control-user"  placeholder="Enter Password..."></asp:TextBox>--%>
            			    </div>

                            <asp:Button ID="Button1" class="btn btn-primary btn-user btn-block" 
                                runat="server" Text="Submit" onclick="Button1_Click" />
                    		<br />
                            <center><asp:Literal ID="Literal5" runat="server"></asp:Literal></center>
                    		<br />
                            <center>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="Category ID">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal6" runat="server" Text='<%# Eval("CategoryID") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Category">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal7" runat="server" Text='<%# Eval("CategoryName") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal8" runat="server" Text='<%# Eval("Status") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" class="btn btn-danger" runat="server" 
                                                CommandArgument='<%# Eval("CategoryID") %>' onclick="Button2_Click" 
                                                Text="Delete" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" class="btn btn-success" runat="server" 
                                                CommandArgument='<%# Eval("CategoryID") %>' onclick="Button3_Click" 
                                                Text="Edit" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                            </center>
                            
                            <br />
        		</form>
            </div>
    </div>
    <br />
</asp:Content>

