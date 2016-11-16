<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PropertyDetails.aspx.cs" Inherits="PropertyDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="contentBody" Runat="Server">
    <div class="container">
    
        <table class="table table-striped" >
            
                    <asp:Label ID="Property" runat="server" Text="Property" Style="margin-left:50%"  Font-Bold="True" Font-Size="Larger" ></asp:Label>
                       
           
            <tr>
                 <td>
                     Owner Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="524px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User Name   is required" ForeColor="Red" ControlToValidate="TextBox1">*</asp:RequiredFieldValidator>
                 </td>

                
            </tr>
            <tr>
                <td>
                    PropertyName</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="531px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Property Name is required" ForeColor="Red" ControlToValidate="TextBox2">*</asp:RequiredFieldValidator>
                </td>
              
            </tr>
            
             <tr>
                <td>
                    Price</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="532px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Price is required" ForeColor="Red" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Price should be number" ForeColor="Red" ValidationExpression="\d+?\.{0,1}\d*">*</asp:RegularExpressionValidator>
                 </td>
              
            </tr>
             <tr>
                <td>
                    Type</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="16px" RepeatColumns="2" Width="153px">
                        <asp:ListItem>Condo</asp:ListItem>
                        <asp:ListItem>HDB</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Type is required" ForeColor="Red" ControlToValidate="RadioButtonList1">*</asp:RequiredFieldValidator>
                 </td>
              
            </tr>
             <tr>
                <td>
                    Size</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="539px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Size is required" ForeColor="Red" ControlToValidate="TextBox6">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Size should be number" ForeColor="Red" ValidationExpression="\d+?\.{0,1}\d*">*</asp:RegularExpressionValidator>
                     </td>
              
            </tr>
             <tr>
                <td class="auto-style1">
                    Address</td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox7" runat="server" Height="64px" Width="540px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address is required" ForeColor="Red" ControlToValidate="TextBox7">*</asp:RequiredFieldValidator>
                 </td>
              
            </tr>
            
             <tr>
                <td>
                    Description</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server" Height="236px" Width="537px"></asp:TextBox>
                 </td>
              

            </tr>
             <tr>
                <td class="auto-style2">
                    Image Path</td>
                <td class="auto-style2">
                    <asp:FileUpload ID="FileUpload1" runat="server"  CssClass="btn btn-default"  OnLoad="Button5_Click" />
                    <asp:Button ID="Button5"  CssClass="btn btn-default"  runat="server" OnClick="Button5_Click1" Text="Upload Image" />
                 </td>
              
            </tr>
             <tr>
                <td class="auto-style3">
                     <asp:Image ID="Image1" runat="server" Height="208px" Width="276px" />

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Image Path is required" ForeColor="Red" ControlToValidate="FileUpload1">*</asp:RequiredFieldValidator>

                </td>
                         
            </tr>
              <tr>
                <td>
                   

                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                   

                </td>
                         
            </tr>
              <tr>
                  <td>

                  </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Button ID="Button1"  CssClass="btn btn-default"  runat="server" Text="Save" OnClick="Button1_Click" />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button ID="Button3"  CssClass="btn btn-default"  runat="server" Text="Update" OnClick="Button3_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4"   CssClass="btn btn-default" runat="server" Text=" Cancel" OnClick="Button4_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6"  CssClass="btn btn-default"  runat="server" Text="Back" OnClick="Button6_Click" />

                </td>
                         
            </tr>
        </table>
    
    </div>
</asp:Content>

