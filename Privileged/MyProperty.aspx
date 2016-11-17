<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyProperty.aspx.cs" Inherits="Privileged_MyProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">

    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PropertyID" DataSourceID="SqlDataSource1" Height="544px" Width="1121px">
            <Columns>
                <asp:ImageField DataImageUrlField="ImgPath">
                    <ControlStyle Height="100px" Width="150px" />
                    <ItemStyle Height="50px" />
                </asp:ImageField>
                <asp:BoundField DataField="PropertyName" HeaderText="Property Name" SortExpression="PropertyName" />
                <asp:BoundField DataField="PAddress" HeaderText="Property Address" SortExpression="PAddress" />
                <asp:BoundField DataField="Price" HeaderText="       Price (S$)       " SortExpression="Price" />
                <asp:BoundField DataField="Size" HeaderText="       Size (sqm)       " SortExpression="Size" />
             
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <a href='../PropertyDetails.aspx?id=<%#Eval("PropertyID") %>&ButtonName=Update'>Update</a>
                    </ItemTemplate>
            </asp:TemplateField>
        
                <asp:CommandField ShowDeleteButton="True" />
        
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Team6PropertyDBConnectionString %>" SelectCommand="SELECT * FROM [Property] WHERE ([UserName] = @UserName2)" DeleteCommand="DELETE FROM [Property] WHERE [PropertyID] = @PropertyID" InsertCommand="INSERT INTO [Property] ([UserName], [PropertyName], [ImgPath], [Price], [PType], [Size], [PAddress], [ListDate], [PDescription]) VALUES (@UserName, @PropertyName, @ImgPath, @Price, @PType, @Size, @PAddress, @ListDate, @PDescription)" UpdateCommand="UPDATE [Property] SET [UserName] = @UserName, [PropertyName] = @PropertyName, [ImgPath] = @ImgPath, [Price] = @Price, [PType] = @PType, [Size] = @Size, [PAddress] = @PAddress, [ListDate] = @ListDate, [PDescription] = @PDescription WHERE [PropertyID] = @PropertyID">
            <DeleteParameters>
                <asp:Parameter Name="PropertyID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="PropertyName" Type="String" />
                <asp:Parameter Name="ImgPath" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="PType" Type="String" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="PAddress" Type="String" />
                <asp:Parameter DbType="Date" Name="ListDate" />
                <asp:Parameter Name="PDescription" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="Label1" Name="UserName2" PropertyName="Text" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="PropertyName" Type="String" />
                <asp:Parameter Name="ImgPath" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="PType" Type="String" />
                <asp:Parameter Name="Size" Type="String" />
                <asp:Parameter Name="PAddress" Type="String" />
                <asp:Parameter DbType="Date" Name="ListDate" />
                <asp:Parameter Name="PDescription" Type="String" />
                <asp:Parameter Name="PropertyID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Team6PropertyDBConnectionString %>" SelectCommand="SELECT * FROM [Property]"></asp:SqlDataSource>
   <footer class="container">
       <div class="row" style="display:inline-flex">

     
      <div class="col-ms-1">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1"  CssClass="btn btn-default"  runat="server" OnClick="Button1_Click" Text="Create New" />
      </div>
    
        
   <div class="col-ms-1">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <asp:Button ID="Button2"  CssClass="btn btn-default"  runat="server" OnClick="Button2_Click" Text="Cancel" />
        </div>
             </div>
   </footer>
         
    
    </div>
</asp:Content>

