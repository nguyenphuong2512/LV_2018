<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="donvi.aspx.cs" Inherits="LV_PHUONG.hocvi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default panel-border-color panel-border-color-primary">
                <div class="panel-heading panel-heading-divider" style="font-size: 16px; font-weight: bold; color: black"> THÔNG TIN ĐƠN VỊ</div>
                <div class="panel-body">
                    <div class="form-horizontal group-border-dashed">
                     
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Mã Đơn Vị</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtmadv" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Tên Đơn Vị</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txttendv" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Trực Thuộc</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txttructhuoc" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-sm-3 control-label">Mã Cán Bộ</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtmacb" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-9">
                                <p class="text-right">
                                    <asp:Button ID="btnthem" runat="server" Text="Thêm" Width="103px" class="btn btn-space btn-primary" OnClick="btnthem_Click" />
                                    <asp:Button ID="btncapnhat" runat="server" Text="Lưu" Width="103px" class="btn btn-space btn-success" OnClick="btncapnhat_Click" Visible="False"  />
                                    <asp:Button ID="btnhuy" runat="server" Text="Hủy" Width="103px" class="btn btn-space btn-warning hover" OnClick="btnhuy_Click" Visible="False" />
                                    <asp:Button ID="btnxoa" runat="server" Text="Xóa" Width="103px" class="btn btn-space btn-danger hover" OnClick="btnxoa_Click" Visible="False" />
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
                <div class="panel-heading panel-heading-divider" style="font-size: 16px; font-weight: bold; color: black">DANH SÁCH ĐƠN VỊ</div>
                <div class="row be-datatable-body">
                    <div class="col-sm-12">
                        <asp:SqlDataSource ID="sqlDSDONVI" runat="server" ConnectionString='<%$ ConnectionStrings:attlptqx_LV_PHUONGNGOC_QLCTTD2ConnectionString %>' SelectCommand="DONVI_SELECT_ALL" DeleteCommand="DONVI_DELETE" DeleteCommandType="StoredProcedure" InsertCommand="DONVI_INSERT" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure" UpdateCommand="DONVI_UPDATE" UpdateCommandType="StoredProcedure">
                        
                             <DeleteParameters>
                                <asp:ControlParameter ControlID="txtmadv" Name="DV_MA" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttendv" Name="DV_TEN" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttructhuoc" Name="DV_TRUCTHUOC" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtmacb" Name="CB_MA" PropertyName="Text" Type="String" />
                                 
                             </DeleteParameters>
                            <InsertParameters>
                                 <asp:ControlParameter ControlID="txtmadv" Name="DV_MA" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttendv" Name="DV_TEN" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttructhuoc" Name="DV_TRUCTHUOC" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtmacb" Name="CB_MA" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="txtmadv" Name="DV_MA" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttendv" Name="DV_TEN" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttructhuoc" Name="DV_TRUCTHUOC" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txtmacb" Name="CB_MA" PropertyName="Text" Type="String" />
                            </UpdateParameters>

                        </asp:SqlDataSource>
                       
                        <asp:GridView ID="gvDSDONVI" runat="server" class="table table-striped table-hover table-fw-widget" AutoGenerateColumns="False" DataKeyNames="DV_MA" DataSourceID="sqlDSDONVI" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="gvDSDONVI_SelectedIndexChanged" Width="100%">
                            <AlternatingRowStyle BackColor="White" BorderStyle="None" />
                            <Columns> 
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True">
                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                </asp:CommandField>
                                <asp:BoundField DataField="DV_MA" HeaderText="MÃ ĐƠN VỊ" ReadOnly="True" SortExpression="DV_MA" InsertVisible="False"></asp:BoundField>
                                <asp:BoundField DataField="DV_TEN" HeaderText="TÊN ĐƠN VỊ" SortExpression="DV_TEN" />
                                <asp:BoundField DataField="DV_TRUCTHUOC" HeaderText="TRỰC THUỘC" SortExpression="DV_TRUCTHUOC" />
                                <asp:BoundField DataField="CB_MA" HeaderText="MÃ CÁN BỘ" SortExpression="CB_MA" />
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
