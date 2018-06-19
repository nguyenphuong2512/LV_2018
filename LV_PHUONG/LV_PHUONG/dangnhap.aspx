<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="LV_PHUONG.dangnhap" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Login - Vali Admin</title>
  </head>
  <body>
    <section class="material-half-bg">
      <div class="cover"></div>
    </section>
    <section class="login-content">
      <div class="logo">
        <h2>QUẢN LÝ THI ĐUA</h2>
      </div>
      <div class="login-box">
        <form class="login-form" >
          <h3 class="login-head"><i class="fa fa-lg fa-fw fa-user"></i>SIGN IN</h3>
          
            <div class="panel-body">
                 <form method="get" runat="server">
                  <div class="form-group">
                      <label class="control-label">USERNAME</label>
                    <asp:TextBox ID="txttk" runat="server" Cssclass="form-control"></asp:TextBox>
                  </div>
                  <div class="form-group">
                       <label class="control-label">PASSWORD</label>
                    <asp:TextBox ID="txtmk" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                  </div>
                <div class="form-group">
            <div class="utility">
              <div class="animated-checkbox">
                <label  ID="Label1">
                  <input type="checkbox"><span class="label-text">Vẫn đăng nhập</span>
                </label>
              </div>
              <p class="semibold-text mb-2"><a href="#" data-toggle="flip">Quên mật khẩu ?</a></p>
            </div>
          </div>
                  <div class="form-group login-submit">
                      <asp:Button ID="btndangnhap" runat="server" Text="Đăng nhập"  Cssclass="btn btn-primary btn-xl" OnClick="btndangnhap_Click"/>
                  </div>
                </form>
                </div>
        </form>
      
      </div>
    </section>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:connstring %>' SelectCommand="LOGIN_SELECT_ALL" SelectCommandType="StoredProcedure" ></asp:SqlDataSource>

    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <script type="text/javascript">
        // Login Page Flipbox control
        $('.login-content [data-toggle="flip"]').click(function () {
            $('.login-box').toggleClass('flipped');
            return false;
        });
    </script>
  </body>
</html>