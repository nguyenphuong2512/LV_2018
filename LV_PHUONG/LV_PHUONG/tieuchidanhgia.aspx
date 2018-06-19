<%@ Page Title="" Language="C#" MasterPageFile="~/Master Page.Master" AutoEventWireup="true" CodeBehind="tieuchidanhgia.aspx.cs" Inherits="LV_PHUONG.tieuchidanhgia1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default panel-border-color panel-border-color-primary">
                <div class="panel-heading panel-heading-divider" style="font-size: 16px; font-weight: bold; color: black"> THÔNG TIN TIÊU CHÍ ĐÁNH GIÁ</div>
                <div class="panel-body">
                    <div class="form-horizontal group-border-dashed">
                     
                       <div class="form-group">
                            <label class="col-sm-3 control-label">Mã Tiêu Chí</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtmatc" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">Tên Tiêu Chí</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txttentc" class="form-control input-sm" runat="server" Width="100%" ReadOnly="True"></asp:TextBox>
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
                <div class="panel-heading panel-heading-divider" style="font-size: 16px; font-weight: bold; color: black">DANH SÁCH TIÊU CHÍ ĐÁNH GIÁ</div>
                <div class="row be-datatable-body">
                    <div class="col-sm-12">
                        <asp:SqlDataSource ID="sqlDSTC" runat="server" ConnectionString='<%$ ConnectionStrings:attlptqx_LV_PHUONGNGOC_QLCTTD2ConnectionString %>' DeleteCommand="TIEUCHI_DANHGIA_DELETE" DeleteCommandType="StoredProcedure" InsertCommand="TIEUCHI_DANHGIA_INSERT" InsertCommandType="StoredProcedure" SelectCommand="TIEUCHI_DANHGIA_SELECT_ALL" SelectCommandType="StoredProcedure" UpdateCommand="TIEUCHI_DANHGIA_UPDATE" UpdateCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="txtmatc" Name="TCDG_MA" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttentc" Name="TCDG_TEN" PropertyName="Text" Type="String" />
                               
                            </DeleteParameters>
                            <InsertParameters>
                                 <asp:ControlParameter ControlID="txtmatc" Name="TCDG_MA" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttentc" Name="TCDG_TEN" PropertyName="Text" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="txtmatc" Name="TCDG_MA" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="txttentc" Name="TCDG_TEN" PropertyName="Text" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                     
                          <asp:GridView ID="gvDSTCDG" runat="server" class="table table-striped table-hover table-fw-widget" AutoGenerateColumns="False" DataSourceID="sqlDSTC" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="gvDSTCDG_SelectedIndexChanged" Width="100%">
                           <AlternatingRowStyle BackColor="White" BorderStyle="None" />
                            <Columns> 
                                <asp:CommandField SelectText="Chọn" ShowSelectButton="True">
                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                </asp:CommandField>
                                <asp:BoundField DataField="TCDG_MA" HeaderText="MÃ TIÊU CHÍ" ReadOnly="True" SortExpression="TCDG_MA" InsertVisible="False"></asp:BoundField>
                                <asp:BoundField DataField="TCDG_TEN" HeaderText="TÊN TIÊU CHÍ" SortExpression="TCDG_TEN" />
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
