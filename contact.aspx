<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- inner banner -->
    <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
            <div class="container pt-4 pb-sm-4">
                <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">Contact Us</h4>
                <ul class="breadcrumbs-custom-path">
                    <li><a href="index.html">Home</a></li>
                    <li class="active"><i class="fas fa-angle-right mx-2"></i>Contact</li>
                </ul>
            </div>
        </div>
        <div class="shape">
            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 280">
                <path fill-opacity="1">
                    <animate attributeName="d" dur="20000ms" repeatCount="indefinite"
                        values="M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z; M0,160L48,181.3C96,203,192,245,288,234.7C384,224,480,160,576,133.3C672,107,768,117,864,138.7C960,160,1056,192,1152,197.3C1248,203,1344,181,1392,170.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;												 M0,64L48,74.7C96,85,192,107,288,133.3C384,160,480,192,576,170.7C672,149,768,75,864,80C960,85,1056,171,1152,181.3C1248,192,1344,128,1392,96L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;
                                                 M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;" />

                </path>
            </svg>
        </div>
    </section>
    <!-- //inner banner -->

    <!-- contact -->
    <section class="contact py-5" id="contact">
        <div class="container pt-md-5 pt-4">
            <div class="title-heading-w3 text-center mx-auto mb-md-5 mb-4" style="max-width:500px;">
                <h3 class="title-style">Contact Us</h3>
            </div>
            <div class="main-grid-contact">
                <div class="row">
                    <!-- map -->
                    <div class="col-lg-6 mt-lg-0 mt-3 order-lg-first order-last">
                        <div class="map">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423286.27404345275!2d-118.69191921441556!3d34.02016130939095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos+Angeles%2C+CA%2C+USA!5e0!3m2!1sen!2sin!4v1522474296007"
                                allowfullscreen></iframe>
                        </div>
                    </div>
                    <!-- contact form -->
                    <div class="col-lg-6 content-form-right p-0 order-lg-last order-first">
                        <div class="form-w3ls p-5">
                            <h4 class="mb-4 sec-title-w3">Send us a message</h4>
                            <form id="form1" runat="server">
                                <div class="row mb-3">
                                    <div class="col-sm-6 form-group mb-sm-0 mb-3">
                                    <asp:TextBox ID="TextBox1" class="form-control" name="w3lName" SkinID="w3lName"
                                            placeholder="First Name" required="" runat="server"></asp:TextBox>
                                    </div>
                                    <div class="col-sm-6 form-group">
                                        <asp:TextBox ID="TextBox2" class="form-control" name="w3lName" SkinID="w3lName" 
                                            placeholder="Last Name" required="" runat="server"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox4" class="form-control" TextMode="Email" name="w3lSender" SkinID="w3lSender"
                                        placeholder="Email" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group mb-3">
                                    <asp:TextBox ID="TextBox5" class="form-control" TextMode="Phone" name="w3lName" SkinID="w3lName"
                                        placeholder="Phone Number" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox6" class="form-control" name="w3lMessage" SkinID="w3lMessage"
                                        placeholder="Message" required="" runat="server"></asp:TextBox>
                                </div>
                                <div class="input-group1 text-end mt-4">
                                    <asp:Button ID="Button1" class="btn btn-style" runat="server" Text="Submit"></asp:Button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //contact -->

    <!-- support -->
    <div class="support pt-5 pb-2" id="support">
        <div class="container">
            <h3 class="title-style text-center mb-5">Help & Support</h3>
            <div class="row support-bottom text-center mb-5 justify-content-center">
                <div class="col-lg-4 col-sm-6 support-grid">
                    <span class="fa fa-laptop"></span>
                    <h5 class="text-uppercase mt-4 mb-2">Online Support</h5>
                    <p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
                    <a href="#call" class="btn btn-style mt-4">
                        Call Now
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6 support-grid mt-sm-0 mt-5">
                    <span class="fa fa-comments"></span>
                    <h5 class="text-uppercase mt-4 mb-2">Live Chat 24/7</h5>
                    <p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
                    <a href="#chat" class="btn btn-style mt-4">
                        Let's Chat
                    </a>
                </div>
                <div class="col-lg-4 col-sm-6 support-grid mt-lg-0 mt-5">
                    <span class="fa fa-question"></span>
                    <h5 class="text-uppercase mt-4 mb-2">Any Questions</h5>
                    <p>Ut enim ad minima veniam, quis nostrum ullam corporis suscipit laboriosam.</p>
                    <a href="#ask" class="btn btn-style mt-4">
                        Ask Now
                    </a>
                </div>
            </div>
        </div>
    </div>
    <!-- support -->
</asp:Content>

