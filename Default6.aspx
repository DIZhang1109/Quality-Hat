<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default6.aspx.cs" Inherits="Default6" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#form1').bootstrapValidator({
            feedbackIcons: {
                valid: 'fa fa-check',
                invalid: 'fa fa-times',
                validating: 'fa fa-refresh'
            },
            fields: {
                // There is no single quote
                userid: {
                    validators: {
                        notEmpty: {
                            message: 'The username is required and cannot be empty'
                        },
                        stringLength: {
                            min: 6,
                            max: 30,
                            message: 'The username must be more than 6 and less than 30 characters long'
                        },
                        regexp: {
                            regexp: /^[a-zA-Z0-9]+$/,
                            message: 'The username can only consist of alphabetical and number'
                        },
                        different: {
                            field: 'password',
                            message: 'The username and password cannot be the same as each other'
                        }
                    }
                },
                pass: {
                    validators: {
                        notEmpty: {
                            message: 'The password is required and cannot be empty'
                        },
                    }
               }
            }
        });
    });
</script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="form-box" id="login-box">
            <div class="header">Sign In</div>
                <asp:Label ID="lbl_msg" runat="server" Text=""></asp:Label>
                <div class="body bg-gray">
                    <div class="form-group">
                        <asp:TextBox ID="txt_user_id" runat="server" class="form-control" placeholder="User ID" name="userid"
                        required data-bv-notempty-message="The User ID is required and cannot be empty"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txt_password" runat="server" class="form-control" placeholder="Password" TextMode="Password" name="pass"
                        required data-bv-notempty-message="The password is required and cannot be empty"></asp:TextBox>

                    </div>
                </div>

                <div class="footer">                                                               
                    <asp:Button ID="btn_login" runat="server" Text="Login" 
                        class="btn bg-olive btn-sm" />

                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel"
                        class="btn bg-olive btn-sm" OnClientClick="resetFields(form1);"/>

                    <p><a href="#">I forgot my password</a><br />
                    <a href="register.aspx">Sign Up</a></p>
                </div>
        </div>
    </div>
    <br />
    </form>
</body>
</html>
--%>