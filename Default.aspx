<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Precious Metal Jewery by Dianne van Giersbergen</title>

    <link href="StyleSheet.css" rel="stylesheet" />
    <!--Link para Estilo CSS-->

</head>
<body style="background-color: #000000;">
    <form id="form1" runat="server">
        <div style="width: 80%; margin: 0 auto;">
            <!--Tudo-->

            <div style="margin: 0 auto; width: 100%; margin: 0 auto;">
                <!--Banner-->
                <img src="Imagens/Banner.jpg" style="width: 100%; margin: 0 auto;" />
                <!--Imagem-->

            </div>
            <!--Banner Fim-->

            <div style="width: 100%; height: 35px; float: left;">
                <!--Menu-->
                <div class="menu" style="float: left;"><a href="Default.aspx">Home </a></div>
                <div class="menu" style="float: left;">About </div>
                <div class="menu" style="float: right;">
                    Filter products
                    <asp:TextBox ID="TextBoxPesquisa" runat="server"></asp:TextBox>
                    &nbsp;<asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
                </div>
            </div>
            <!--Menu Fechar-->

            <!--Produtos-->
            <div id="Produtos" style="width: 100%; margin: 0 auto; text-align: center; font-family: 'Bell MT'; font-size: 20px; color: white;">
                <!--Produtos-->

                <!--AcessDataSource-->
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/PreciousMetal.mdb" SelectCommand="SELECT * FROM [Produtos_PM]"></asp:AccessDataSource>
                <br />

                <!--ListView-->
                <asp:ListView ID="ListViewProducts" runat="server" DataSourceID="AccessDataSource1">

                    <ItemTemplate>
                        <div style="width: 340px; float: left; margin: 7px; color: white;">
                            <!--Produtos em Grade-->
                            <a href="Detalhes.aspx?cod=<%#Eval("Codigo") %>">
                                <!--Link para Detalhes-->
                                <%#Eval("Produto" ) %>
                                <br />
                                <img src="Imagens/<%#Eval("Foto") %>" style="width: 334px; text-align: center;" />
                            </a>
                            <!--Link para Detalhes Fim-->
                            <%#Eval("Preco"," € {0:N2}")  %>
                        </div>
                        <!--Produtos em Grade Fim-->
                    </ItemTemplate>
                </asp:ListView>
                <br />
                <br />

                <!--DataPager-->
                <div style="width: 100%; height: 40px; text-align: center; float: left; padding-top: 15px;">
                    <!--DataPager-->

                    <asp:DataPager ID="DataPager1" PageSize="6" PagedControlID="ListViewProducts" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            <asp:NumericPagerField />
                            <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                        </Fields>
                    </asp:DataPager>

                </div>
                <!--DataPager Fim-->

            </div>
            <!--Produtos Fim-->

            <!--Rodapé-->
            <div style="width: 100%; float: right; padding: 15px 5px 5px 5px; color: white; font-family: Calibri; text-align: center; font-size: 14px;">
                Jade Ohara Mesquita | 130100033
                <br />
                Tópicos Especiais em Engenharia de Computação | Mestre Jean Antonie Vieira<br />
                9º Nível - Engenharia de Computação | Unipinhal - 27/03/2017<br />

            </div>
            <!--Rodapé Fim-->

        </div>
        <!--Tudo Fim-->
    </form>
</body>
</html>
