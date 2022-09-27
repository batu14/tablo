<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" MaintainScrollPositionOnPostback="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
    <title>Tablo</title>
    <style>
        .nav{
            width:90%;
            margin: 0 auto;
            background-color:burlywood;
            padding:1rem;
            display:flex;
            align-items:center;
            justify-content:space-evenly;
            border-radius:1rem;
        }

        .nav select{
            width:10rem;
            padding:0.1rem 1rem;
            border:1px solid #ccc;
            border-radius:1rem;
            background-color:white;
        }
        .nav input{
            width:10rem;
            padding:.5rem 1.1rem;
            font-size:1rem;
            color:whitesmoke;
            border:1px solid #ccc;
            border-radius:1rem;
            background-color:dodgerblue;
            transition:100ms all ease-out;
            
        }
        .nav input:hover{
            background-color:mediumblue;
        }
        .table-area{
            text-align:center;
            width:90%;
            height:auto;
            margin:3rem auto;
            background-color:burlywood;
            padding:1rem;
            border-radius:1rem;
        }
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <div class="nav">
               <asp:Label ID="msg" runat="server" Text=""></asp:Label>
              <span>
                  <label>Tablo Seç</label>
                   <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
                       <asp:ListItem Selected Value="0">Tablo Seçin</asp:ListItem>
                       <asp:ListItem Value="1">deneme</asp:ListItem>
                       <asp:ListItem Value="2">dersler</asp:ListItem>
                   </asp:DropDownList>
              </span>
               <asp:Button ID="Button1" runat="server" Text="Tablo Oluştur" OnClick="Button1_Click" />
           </div>
            <div class="table-area" >
                <h5>Otomatik Oluşturulan Tablo</h5>
               <table class="table">
                   <tbody id="area" runat="server"></tbody>
               </table>
                
            </div>
            <div class="table-area">
                    <h5>GridView Görüntüsü</h5>
                    <asp:GridView ID="GridView1"  runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin:auto; width:90%;"  >
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </div>
        </div>
    </form>
</body>
</html>
