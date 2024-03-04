<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AgainPortfolio.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body{

    background-color:#b4bcaa;
} </style>
</head>
<body>
    <form id="form1" runat="server">

        <div>
                  <%-- HomeList GridView --%>
                  <div>
           <center>
           <h1>HomeList Edit Section</h1>
                       <asp:GridView ID="GvHomeList" runat="server" AutoGenerateColumns="false" ShowFooter="false" DatakeyNames="ID"
             ShowHeaderWhenEmpty="true"
           OnRowEditing="GvHomeList_RowEditing" OnRowCancelingEdit="GvHomeList_RowCancelingEdit"
           OnRowUpdating="GvHomeList_RowUpdating" 
           BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

                    <%-- Theme Properties --%>

        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />

        <Columns>

              <asp:TemplateField HeaderText="Name">
               <ItemTemplate>
              <asp:Label Text='<%# Eval("Name") %>' runat="server" />
              </ItemTemplate>
            <EditItemTemplate>
           <asp:TextBox ID="txtName" Text='<%# Eval("Name") %>' runat="server" />
          </EditItemTemplate>
          <FooterTemplate>
          <asp:TextBox ID="txtNameFooter" runat="server" />
            </FooterTemplate>
           </asp:TemplateField>
              <asp:TemplateField HeaderText="Work">
          <ItemTemplate>
           <asp:Label Text='<%# Eval("Work") %>' runat="server" />
         </ItemTemplate>
         <EditItemTemplate>
       <asp:TextBox ID="txtWork" Text='<%# Eval("Work") %>' runat="server" />
       </EditItemTemplate>
      <FooterTemplate>
       <asp:TextBox ID="txtWorkFooter" runat="server" />
      </FooterTemplate>
           </asp:TemplateField>
              <asp:TemplateField HeaderText="Age">
              <ItemTemplate>
              <asp:Label Text='<%# Eval("Age") %>' runat="server" />
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="txtAge" Text='<%# Eval("Age") %>' runat="server" />
            </EditItemTemplate>
              <FooterTemplate>
             <asp:TextBox ID="txtAgeFooter" runat="server" />
             </FooterTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Phone">
              <ItemTemplate>
              <asp:Label Text='<%# Eval("Phone") %>' runat="server" />
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="txtPhone" Text='<%# Eval("Phone") %>' runat="server" />
              </EditItemTemplate>
              <FooterTemplate>
              <asp:TextBox ID="txtPhoneFooter" runat="server" />
              </FooterTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Email">
             <ItemTemplate>
             <asp:Label Text='<%# Eval("Email") %>' runat="server" />
             </ItemTemplate>
             <EditItemTemplate>
             <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" />
             </EditItemTemplate>
             <FooterTemplate>
            <asp:TextBox ID="txtEmailFooter" runat="server" />
            </FooterTemplate>
            </asp:TemplateField>
              <asp:TemplateField HeaderText="Address">
              <ItemTemplate>
              <asp:Label Text='<%# Eval("Address") %>' runat="server" />
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="txtAddress" Text='<%# Eval("Address") %>' runat="server" />
              </EditItemTemplate>
              <FooterTemplate>
              <asp:TextBox ID="txtAddressFooter" runat="server" />
              </FooterTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Github">
              <ItemTemplate>
              <asp:Label Text='<%# Eval("Github") %>' runat="server" />
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="txtGithub" Text='<%# Eval("Github") %>' runat="server" />
              </EditItemTemplate>
              <FooterTemplate>
              <asp:TextBox ID="txtGithubFooter" runat="server" />
              </FooterTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="LinkedIn">
              <ItemTemplate>
              <asp:Label Text='<%# Eval("LinkedIn") %>' runat="server" />
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="txtLinkedIn" Text='<%# Eval("LinkedIn") %>' runat="server" />
              </EditItemTemplate>
              <FooterTemplate>
              <asp:TextBox ID="txtLinkedInFooter" runat="server" />
              </FooterTemplate>
              </asp:TemplateField>
              <asp:TemplateField HeaderText="Facebook">
              <ItemTemplate>
              <asp:Label Text='<%# Eval("Facebook") %>' runat="server" />
              </ItemTemplate>
              <EditItemTemplate>
              <asp:TextBox ID="txtFacebook" Text='<%# Eval("Facebook") %>' runat="server" />
              </EditItemTemplate>
              <FooterTemplate>
              <asp:TextBox ID="txtFacebookFooter" runat="server" />
              </FooterTemplate>
              </asp:TemplateField>

                  <asp:TemplateField>
          <ItemTemplate>
          <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;" />
         <%-- <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/> --%>
 </ItemTemplate>
 <EditItemTemplate>
     <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
     <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
 </EditItemTemplate>
 <FooterTemplate>
     <%-- <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
         style="background-color: #00008B; color: white;"/> --%>
 </FooterTemplate>
</asp:TemplateField> 

        </Columns>

      </asp:GridView>

                <asp:Label ID="lblSuccessMessage2" Text="" runat="server" ForeColor="Green" />

                <asp:Label ID="lblErrorMessage2" Text="" runat="server" ForeColor="Red" />

   </center>

 </div>

                  <%-- Project GridView --%>
                  <div>
        <center>
       <h1>Projects Edit Section</h1>
       <asp:GridView ID="GvProjects" runat="server" AutoGenerateColumns="false" ShowFooter="true"
    DataKeyNames="ProjectID" showHeaderWhenEmpty="true"
    OnRowCommand="GvProjects_RowCommand"
    OnRowEditing="GvProjects_RowEditing" OnRowCancelingEdit="GvProjects_RowCancelingEdit"
    OnRowUpdating="GvProjects_RowUpdating" OnRowDeleting="GvProjects_RowDeleting"
    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

    <FooterStyle BackColor="White" ForeColor="#000066" />
    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
    <RowStyle ForeColor="#000066" />
    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#007DBB" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#00547E" />

    <Columns>
        <asp:TemplateField HeaderText="Category">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Category") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtCategory" Text='<%# Eval("Category") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtCategoryFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Image") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtImage" Text='<%# Eval("Image") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtImageFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Title">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Title") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtTitle" Text='<%# Eval("Title") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtTitleFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Description">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Description") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtDescription" Text='<%# Eval("Description") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtDescriptionFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Stack">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Stack") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtStack" Text='<%# Eval("Stack") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtStackFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>

        <asp:TemplateField HeaderText="Link">
            <ItemTemplate>
                <asp:Label Text='<%# Eval("Link") %>' runat="server" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:TextBox ID="txtLink" Text='<%# Eval("Link") %>' runat="server" />
            </EditItemTemplate>
            <FooterTemplate>
                <asp:TextBox ID="txtLinkFooter" runat="server" />
            </FooterTemplate>
        </asp:TemplateField>

       <asp:TemplateField>
    <ItemTemplate>
        <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
            style="background-color: #00008B; color: white;" />
        <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
            style="background-color: #00008B; color: white;"/>
    </ItemTemplate>
    <EditItemTemplate>
        <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
            style="background-color: #00008B; color: white;"/>
        <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
            style="background-color: #00008B; color: white;"/>
    </EditItemTemplate>
    <FooterTemplate>
        <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
            style="background-color: #00008B; color: white;"/>
    </FooterTemplate>
   </asp:TemplateField>


             </Columns>
         </asp:GridView>

          <asp:Label ID="lblSuccessMessage6" Text="" runat="server" ForeColor="Green" />
          <asp:Label ID="lblErrorMessage6" Text="" runat="server" ForeColor="Red" />
       </center>
     </div>


                 <%-- Education GridView --%>
                  <div>
      <center>
      <h1>Education Edit Section</h1>
      <asp:GridView ID="GvEducation" runat="server" AutoGenerateColumns="false" ShowFooter="true" DatakeyNames="ID"
          showHeaderWhenEmpty="true"
          OnRowCommand="GvEducation_RowCommand" OnRowEditing="GvEducation_RowEditing" OnRowCancelingEdit="GvEducation_RowCancelingEdit"
         OnRowUpdating="GvEducation_RowUpdating" OnRowDeleting="GvEducation_RowDeleting"
          BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

          <FooterStyle BackColor="White" ForeColor="#000066" />
          <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
          <RowStyle ForeColor="#000066" />
          <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#007DBB" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#00547E" />

          <Columns>
              <asp:TemplateField HeaderText="Subtitle">
                  <ItemTemplate>
                      <asp:Label Text='<%# Eval("Subtitle") %>' runat="server" />
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtSubtitle" Text='<%# Eval("Subtitle") %>' runat="server" />
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtSubtitleFooter" runat="server" />
                  </FooterTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="Data">
                  <ItemTemplate>
                      <asp:Label Text='<%# Eval("Data") %>' runat="server" />
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtData" Text='<%# Eval("Data") %>' runat="server" />
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtDataFooter" runat="server" />
                  </FooterTemplate>
              </asp:TemplateField>

              <asp:TemplateField HeaderText="Description">
                  <ItemTemplate>
                      <asp:Label Text='<%# Eval("Description") %>' runat="server" />
                  </ItemTemplate>
                  <EditItemTemplate>
                      <asp:TextBox ID="txtDescription" Text='<%# Eval("Description") %>' runat="server" />
                  </EditItemTemplate>
                  <FooterTemplate>
                      <asp:TextBox ID="txtDescriptionFooter" runat="server" />
                  </FooterTemplate>
              </asp:TemplateField>

                 <asp:TemplateField>
                <ItemTemplate>
              <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;" />
        <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
      </ItemTemplate>
       <EditItemTemplate>
     <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
     <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
      </EditItemTemplate>
    <FooterTemplate>
     <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
         style="background-color: #00008B; color: white;"/>
         </FooterTemplate>
      </asp:TemplateField>

          </Columns>
      </asp:GridView>

      <asp:Label ID="lblSuccessMessage3" Text="" runat="server" ForeColor="Green" />
      <asp:Label ID="lblErrorMessage3" Text="" runat="server" ForeColor="Red" />
  </center>
       </div>
                
                 <%-- Beyond class GridView --%>
                  <div>
             <center>
        <h1>BeyondClassroom Edit Section</h1>
        <asp:GridView ID="GvBeyondClassroom" runat="server" AutoGenerateColumns="false"  DataKeyNames="ID"
            ShowHeaderWhenEmpty="true" ShowFooter="true"
            OnRowCommand="GvBeyondClassroom_RowCommand" OnRowEditing="GvBeyondClassroom_RowEditing" OnRowCancelingEdit="GvBeyondClassroom_RowCancelingEdit"
            OnRowUpdating="GvBeyondClassroom_RowUpdating" OnRowDeleting="GvBeyondClassroom_RowDeleting1"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

            <Columns>
                <asp:TemplateField HeaderText="Subtitle">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Subtitle") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtSubtitle" Text='<%# Eval("Subtitle") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtSubtitleFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Data">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Data") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtData" Text='<%# Eval("Data") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDataFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Description">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Description") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescription" Text='<%# Eval("Description") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDescriptionFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                

                    <asp:TemplateField>
          <ItemTemplate>
     <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;" />
     <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
       </ItemTemplate>
       <EditItemTemplate>
     <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
     <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
       </EditItemTemplate>
     <FooterTemplate>
     <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
         style="background-color: #00008B; color: white;"/>
       </FooterTemplate>
        </asp:TemplateField>

            </Columns>
        </asp:GridView>

        <asp:Label ID="lblSuccessMessage4" Text="" runat="server" ForeColor="Green" />
        <asp:Label ID="lblErrorMessage4" Text="" runat="server" ForeColor="Red" />

    </center>
</div>

                <%-- Leisure pursuit GridView --%>
                  <div>
       <center>
        <h1>Leisure pursuit Edit Section</h1>
        <asp:GridView ID="GvServicesSection" runat="server" AutoGenerateColumns="false" ShowFooter="true" DatakeyNames="ID"
            showHeaderWhenEmpty="true"
            OnRowCommand="GvServicesSection_RowCommand" OnRowEditing="GvServicesSection_RowEditing"
            OnRowCancelingEdit="GvServicesSection_RowCancelingEdit" OnRowUpdating="GvServicesSection_RowUpdating"
            OnRowDeleting="GvServicesSection_RowDeleting"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

            <Columns>
                <asp:TemplateField HeaderText="Image Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("ImageName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtImageName" Text='<%# Eval("ImageName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtImageNameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Title">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Title") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtTitle" Text='<%# Eval("Title") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtTitleFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Detail">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Detail") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDetail" Text='<%# Eval("Detail") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtDetailFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                    <asp:TemplateField>
      <ItemTemplate>
     <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;" />
     <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
 </ItemTemplate>
 <EditItemTemplate>
     <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
     <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
 </EditItemTemplate>
 <FooterTemplate>
     <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
         style="background-color: #00008B; color: white;"/>
 </FooterTemplate>
</asp:TemplateField>

            </Columns>
        </asp:GridView>

        <asp:Label ID="lblSuccessMessage5" Text="" runat="server" ForeColor="Green" />
        <asp:Label ID="lblErrorMessage5" Text="" runat="server" ForeColor="Red" />
    </center>
</div>

                <%-- ProgrammingLanguage GridView --%>
                 <div>
              <center>
                  <h1>Programming Language Edit Section</h1>
        <asp:GridView ID="GvProgrammingLanguage" runat="server" AutoGenerateColumns="false" ShowFooter="true" DatakeyNames="Id"
            showHeaderWhenEmpty="true"
            OnRowCommand="GvProgrammingLanguage_RowCommand1" OnRowEditing="GvProgrammingLanguage_RowEditing" OnRowCancelingEdit="GvProgrammingLanguage_RowCancelingEdit"
            OnRowUpdating="GvProgrammingLanguage_RowUpdating" OnRowDeleting="GvProgrammingLanguage_RowDeleting"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

            <%-- Theme Properties --%>

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

            <Columns>
               <%--<asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Id") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtId" Text='<%# Eval("Id") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtIdFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>--%>
                <asp:TemplateField HeaderText="LanguageName">
    <ItemTemplate>
        <asp:Label Text='<%# Eval("LanguageName") %>' runat="server" />
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtLanguageName" Text='<%# Eval("LanguageName") %>' runat="server" />
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtLanguageNameFooter" runat="server" />
    </FooterTemplate>
</asp:TemplateField>
                <asp:TemplateField HeaderText="Language Percentage">
    <ItemTemplate>
        <asp:Label Text='<%# Eval("LanguagePercentage") %>' runat="server" />
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtLanguagePercentage" Text='<%# Eval("LanguagePercentage") %>' runat="server" />
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtLanguagePercentageFooter" runat="server" />
    </FooterTemplate>
</asp:TemplateField>

                    <asp:TemplateField>
     <ItemTemplate>
     <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;" />
     <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
      </ItemTemplate>
     <EditItemTemplate>
     <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
     <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
       </EditItemTemplate>
       <FooterTemplate>
     <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
         style="background-color: #00008B; color: white;"/>
        </FooterTemplate>
      </asp:TemplateField>

            </Columns>
        </asp:GridView>

        <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />

         <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
       </center>
        </div>

                 <%-- Frontend GridView --%>
                 <div>
            <center>
            <h1>Frontend Edit Section</h1>

                        <asp:GridView ID="GvFrontend" runat="server" AutoGenerateColumns="false" ShowFooter="true" DatakeyNames="FrontendID"
            showHeaderWhenEmpty="true"
            OnRowCommand="GvFrontend_RowCommand" OnRowEditing="GvFrontend_RowEditing" OnRowCancelingEdit="GvFrontend_RowCancelingEdit"
            OnRowUpdating="GvFrontend_RowUpdating" OnRowDeleting="GvFrontend_RowDeleting"
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">

            <%-- Theme Properties --%>

            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />

            <Columns>
               
                <asp:TemplateField HeaderText="SkillName">
    <ItemTemplate>
        <asp:Label Text='<%# Eval("SkillName") %>' runat="server" />
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtSkillName" Text='<%# Eval("SkillName") %>' runat="server" />
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtSkillNameFooter" runat="server" />
    </FooterTemplate>
</asp:TemplateField>
                <asp:TemplateField HeaderText="Skill Percentage">
    <ItemTemplate>
        <asp:Label Text='<%# Eval("SkillPercentage") %>' runat="server" />
    </ItemTemplate>
    <EditItemTemplate>
        <asp:TextBox ID="txtSkillPercentage" Text='<%# Eval("SkillPercentage") %>' runat="server" />
    </EditItemTemplate>
    <FooterTemplate>
        <asp:TextBox ID="txtSkillPercentageFooter" runat="server" />
    </FooterTemplate>
 </asp:TemplateField>

                    <asp:TemplateField>
 <ItemTemplate>
     <asp:Button runat="server" Text="Edit" CommandName="Edit" ToolTip="Edit" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;" />
     <asp:Button runat="server" Text="Delete" CommandName="Delete" ToolTip="Delete" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
 </ItemTemplate>
 <EditItemTemplate>
     <asp:Button runat="server" Text="Update" CommandName="Update" ToolTip="Update" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
     <asp:Button runat="server" Text="Cancel" CommandName="Cancel" ToolTip="Cancel" Width="100px" CssClass="button" 
         style="background-color: #00008B; color: white;"/>
 </EditItemTemplate>
 <FooterTemplate>
     <asp:Button runat="server" Text="Add New" CommandName="AddNew" ToolTip="Add New" Width="100px" CssClass="button"
         style="background-color: #00008B; color: white;"/>
 </FooterTemplate>
</asp:TemplateField>

            </Columns>
        </asp:GridView>

                <asp:Label ID="lblSuccessMessage1" Text="" runat="server" ForeColor="Green" />

                <asp:Label ID="lblErrorMessage1" Text="" runat="server" ForeColor="Red" />

            </center>
        </div>

        </div>
        <br />
        <br />
        <br />
           <div>
               <center>
              <asp:Label ID="lblUserDetails" runat="server" Text="" style="font-weight: bold; font-size: 1.2em;"></asp:Label>
              <br />
             <asp:Button style="font-weight: bold; font-size: 1.2em;" ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
             <br />
            <br />
            <br />
             <asp:Button style="font-weight: bold; font-size: 1.2em;" ID="btnHome" runat="server" Text="Go to Home" OnClick="btnHome_Click" />

             </center>
          </div>
    </form>
</body>
</html>
