<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!-- Custom fonts for this template-->
    		<link href="src/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    		<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	        rel="stylesheet">

	    	<!-- Custom styles for this template-->
    		<link href="src/css/sb-admin-2.min.css" rel="stylesheet">

</head>
<body>
    	<h2><center>Welcome to Admin Login</center></h1>
	<div class="container">

	<!-- Outer Row -->
	<div class="row justify-content-center">

	  <div class="col-xl-6 col-lg-6 col-md-6">
	
    		<div class="card o-hidden border-0 shadow-lg my-5">
      			<div class="card-body p-0">
        		<!-- Nested Row within Card Body -->
        		<div class="row">
          		<div class="col-lg-12">
            		<div class="p-5">
				<form id="form1" runat="server">

		                    <div class="form-group">
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-user" placeholder="Enter Email..."></asp:TextBox>
            			    </div>
                            <div class="form-group">
                                <asp:TextBox ID="TextBox2" runat="server" class="form-control form-control-user" TextMode="Password" placeholder="Enter Password..."></asp:TextBox>
            			    </div>
            
                            <asp:Button ID="Button1" runat="server" 
                                class="btn btn-primary btn-user btn-block" Text="Login" 
                                onclick="Button1_Click" />
                    		<center><asp:Literal ID="Literal1" runat="server"></asp:Literal></center>
                    		<hr>
        			</form>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

</div>

</div>
    <%--<form id="form1" runat="server">
    <div>
    
    </div>
    </form>--%>
</body>
</html>
