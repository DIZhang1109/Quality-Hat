<%@ Page Title="" Language="C#" MasterPageFile="~/QHSite.master" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server">
    <script type="text/javascript">
        function btnSubmit_OnClick() {
            document.getElementById('mainForm').submit();
        }
    </script>
    
    <!-- Header -->
    <div>
        <br />
        <h2 align="center">
            Sign In</h2>
        <br />
    </div>

    <!-- Container -->
    <div class="container">
        <div class="row">
            <form id="signupForm" class="form-horizontal" action="" method="POST">
            <div class="col-md-6 col-md-offset-3">
                <fieldset>
                    <div class="form-group">
                        <label class="control-label">
                            Username</label>
                        <br />
                        <div class="controls">
                            <asp:TextBox ID="txtSignUpName" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <label class="control-label">
                            Password</label>
                        <div class="controls">
                            <asp:TextBox ID="txtSignUpPassword" CssClass="form-control input-lg" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <!-- Button -->
                        <div class="controls">
                            <input type="button" class="btn btn-success" value="Sign In" id="btnSignIn" name="btnSignIn"
                                onclick="btnSignIn_OnClick()" />
                        </div>
                    </div>
                </fieldset>
            </div>
            </form>
        </div>
    </div>
</asp:Content>

