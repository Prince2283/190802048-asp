<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ManageService.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">Services Profile 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
              Manage Services Profile 
            </button>
    </h6>
  </div>
  <br>
   <div class="container"> 
            <div class="col-xl-6 col-lg-6 col-md-6">
                <form id="form1" runat="server">

		                    <div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Enter Title..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" 
                                    class="form-control form-control-user" placeholder="Enter Description..." 
                                    Rows="5" TextMode="MultiLine"></asp:TextBox>
            			        <br />
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

                            <asp:Button ID="Button1" runat="server" 
                                class="btn btn-primary btn-user btn-block" Text="Submit" 
                                onclick="Button1_Click" />
                    		<br />
                            <center><asp:Literal ID="Literal5" runat="server"></asp:Literal></center>
                    		<br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                CellPadding="3">
                                <Columns>
                                    <asp:TemplateField HeaderText="Service ID">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("ServiceID") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Title">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal2" runat="server" Text='<%# Eval("Title") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Description">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal3" runat="server" Text='<%# Eval("Description") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Status">
                                        <ItemTemplate>
                                            <asp:Literal ID="Literal4" runat="server" Text='<%# Eval("Status") %>'></asp:Literal>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" class="btn btn-danger" runat="server" 
                                                CommandArgument='<%# Eval("ServiceID") %>' onclick="Button2_Click" 
                                                Text="Delete" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                            <asp:Button ID="Button3" class="btn btn-success" runat="server" 
                                                CommandArgument='<%# Eval("ServiceID") %>' onclick="Button3_Click" 
                                                Text="Edit" />
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
                            <br />
        		</form>
            </div>
    </div>
    <br />
</asp:Content>

