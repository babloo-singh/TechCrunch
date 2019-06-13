<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Question.aspx.cs" Inherits="Question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid">
        
   <% if (r.HasRows){ %> 
            <% while(r.Read()){%>
        <div class="jumbotron">
            <h4><%= r.GetString(3)%></h4>  
             </div>
        <asp:Label Text="Code Provided :" runat="server" />
        <br />
        <div class="well">
            <h4><%= r.GetString(4)%></h4>
        </div>

            Posted By : <%= r.GetString(0)%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Posted On : <%= r.GetDateTime(8)%><br />

            <% } %>
       <% }%> 
           </div>
    <hr />
    
   <div class="container">
       <h1><span class="fa fa-comments fa-fw"></span>Comments</h1> 
    <% if (rs.HasRows){ %> 
            
            <% while (rs.Read()){%>
        <div class="well">
            <div>
            <h3 style="margin:0"><%= rs.GetString(0) %></h3>
            <small><%= rs.GetDateTime(5) %></small>
                </div>
             <div>
            <p><%= rs.GetString(2) %></p>
        </div>
            </div>
       
            <% } %>
       <% } %> 
            
    </div>
    
</asp:Content>

