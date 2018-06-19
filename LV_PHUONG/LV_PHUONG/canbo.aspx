<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="canbo.aspx.cs" Inherits="LV_PHUONG.canbo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default panel-border-color panel-border-color-primary">
                <div class="panel-heading panel-heading-divider" style="font-size: 16px; font-weight: bold; color: black"> THÔNG TIN CÁN BỘ</div>
                <div class="panel-body">
                    <div class="form-horizontal group-border-dashed">
                     
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Mã Cán Bộ</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtmacb" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                          <div class="form-group">
                            <label class="col-sm-3 control-label">Tên Cán Bộ</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txttencb" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <label class="col-sm-3 control-label">Giới Tính</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtgt" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                           <div class="form-group">
                            <label class="col-sm-3 control-label">Địa Chỉ</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtdiachi" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                           <div class="form-group">
                            <label class="col-sm-3 control-label">Email</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtemail" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                           <div class="form-group">
                            <label class="col-sm-3 control-label">Chức Vụ</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtcv" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                           
                           
                        <div class="form-group">
                            <div class="col-sm-9">

                                <p class="text-right">
                                    <asp:Button ID="btnthem" runat="server" Text="Thêm" Width="103px" class="btn btn-space btn-primary" style="float:left" OnClick="btnthem_Click" />
                                    <asp:Button ID="btncapnhat" runat="server" Text="Lưu" Width="103px" class="btn btn-space btn-success" style="float:left" OnClick="btncapnhat_Click" Visible="False"  />
                                    <asp:Button ID="btnhuy" runat="server" Text="Hủy" Width="103px" class="btn btn-space btn-warning hover" style="float:left" OnClick="btnhuy_Click" Visible="False" />
                                    <asp:Button ID="btnxoa" runat="server" Text="Xóa" Width="103px" class="btn btn-space btn-danger hover" style="float:left" OnClick="btnxoa_Click" Visible="False" />
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

     <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default panel-border-color panel-border-color-primary">
                <div class="panel-heading panel-heading-divider" style="font-size: 16px; font-weight: bold; color: black">DANH SÁCH CÁN BỘ</div>
                <div class="row be-datatable-body">
                    <div class="col-sm-12">
                        <asp:SqlDataSource ID="sqlDSCANBO" runat="server" ConnectionString='<%$ ConnectionStrings:connstring %>' SelectCommand="CANBO_SELECT_ALL" DeleteCommand="CANBO_DELETE" DeleteCommandType="StoredProcedure" InsertCommand="CANBO_INSERT" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommand="CANBO_UPDATE" UpdateCommandType="StoredProcedure">
                        
                             <DeleteParameters>
                                 
                                 <asp:ControlParameter ControlID="txtmacb" Name="MÃ CÁN BỘ" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txttencb" Name="TÊN CÁN BỘ" PropertyName="Text" Type="String" />
                               
                                 <asp:ControlParameter ControlID="txtgt" Name="GIỚI TÍNH" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtdiachi" Name="ĐỊA CHỈ" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtemail" Name="EMAIL" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtcv" Name="CHỨC VỤ" PropertyName="Text" Type="String" />
                                 
                             </DeleteParameters>
                            <InsertParameters>
                                
                                <asp:ControlParameter ControlID="txtmacb" Name="MÃ CÁN BỘ" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txttencb" Name="TÊN CÁN BỘ" PropertyName="Text" Type="String" />
                                
                                 <asp:ControlParameter ControlID="txtgt" Name="GIỚI TÍNH" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtdiachi" Name="ĐỊA CHỈ" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtemail" Name="EMAIL" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtcv" Name="CHỨC VỤ" PropertyName="Text" Type="String" />
                                
                            </InsertParameters>
                            <UpdateParameters>
                                
                               <asp:ControlParameter ControlID="txtmacb" Name="MÃ CÁN BỘ" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txttencb" Name="TÊN CÁN BỘ" PropertyName="Text" Type="String" />
                                
                                 <asp:ControlParameter ControlID="txtgt" Name="GIỚI TÍNH" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtdiachi" Name="ĐỊA CHỈ" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtemail" Name="EMAIL" PropertyName="Text" Type="String" />
                                 <asp:ControlParameter ControlID="txtcv" Name="CHỨC VỤ" PropertyName="Text" Type="String" />
                                 
                            </UpdateParameters>

                        </asp:SqlDataSource>
                       
                        <asp:GridView ID="gvDSCANBO" runat="server" class="table table-striped table-hover table-fw-widget" AutoGenerateColumns="False" DataKeyNames="CB_MA" DataSourceID="sqlDSCANBO" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="gvDSCANBO_SelectedIndexChanged" Width="100%">
                           <AlternatingRowStyle BackColor="White" BorderStyle="None" />
                            <Columns> 
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True">
                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                </asp:CommandField>
                                <asp:BoundField DataField="CB_MA" HeaderText="CB_MA" ReadOnly="True" SortExpression="CB_MA"></asp:BoundField>
                                <asp:BoundField DataField="CB_TEN" HeaderText="CB_TEN" SortExpression="CB_TEN" />
                              
                                <asp:BoundField DataField="CB_GIOITINH" HeaderText="CB_GIOITINH" SortExpression="CB_GIOITINH" />
                                <asp:BoundField DataField="CB_DIACHI" HeaderText="CB_DIACHI" SortExpression="CB_DIACHI" />
                                <asp:BoundField DataField="CB_EMAIL" HeaderText="CB_EMAIL" SortExpression="CB_EMAIL" />
                                <asp:BoundField DataField="CB_CHUCVU" HeaderText="CB_CHUCVU" SortExpression="CB_CHUCVU" />
                               
                                
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            
                            <RowStyle CssClass="table-hover" BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>

           </div>
                </div>
                
            </div>
        </div>
    </div>
</asp:Content>
