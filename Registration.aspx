﻿<%@ Page Title="" Language="C#" MasterPageFile="~/QHSite.master" AutoEventWireup="true"
    CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="Server">
    <script type="text/javascript">
        function btnSubmit_OnClick() {
            document.getElementById('mainForm').submit();
        }

        $(document).ready(function () {
            $('#mainForm').bootstrapValidator({
            });
        });
    </script>
        
    <!-- Header -->
    <div>
        <br />
        <h2 align="center">
            Registration</h2>
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
                            <asp:TextBox ID="txtSignInName" name="txtSignInName" CssClass="form-control input-lg"
                                runat="server" pattern="^[_A-z0-9]{1,}$" MaxLength="15" required></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <label class="control-label">
                            Password</label>
                        <div class="controls">
                            <asp:TextBox ID="txtSignInPassword" name="txtSignInPassword" CssClass="form-control input-lg"
                                type="password" runat="server" pattern="^[_A-z0-9]{1,}$" field="txtConfirmSignInPassword"
                                required></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <label class="control-label">
                            Email</label>
                        <div class="controls">
                            <asp:TextBox ID="txtSignInEMail" name="txtSignInEMail" CssClass="form-control input-lg"
                                runat="server" type="email" required></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <label class="control-label" for="password_confirm">
                            Phone</label>
                        <div class="controls">
                            <asp:TextBox ID="txtSignInPhone" name="txtSignInPhone" CssClass="form-control input-lg"
                                runat="server" pattern="^[-0-9]{1,}$" MinLength="12" MaxLength="13" required></asp:TextBox>
                        </div>
                    </div>
                    <br />
                    <div class="form-group">
                        <!-- Button -->
                        <div class="controls">
                            <asp:Button ID="btnSubmit" CssClass="btn btn-success" runat="server" Text="Submit"
                                OnClientClick="javascript:btnSubmit_OnClick" />
                        </div>
                    </div>
                </fieldset>
            </div>
            </form>
        </div>
    </div>
</asp:Content>
