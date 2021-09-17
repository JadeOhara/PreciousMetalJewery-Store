<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detalhes.aspx.cs" Inherits="Detalhes" %>

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

            <!--Menu-->
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
            <br />
            <br />

            <!--Produtos-->
            <div id="Produtos" style="width: 100%; padding-top: 10px; text-align: center; font-family: 'Bell MT'; font-size: 20px; color: white;">
                <!--Produtos-->

                <!--AcessDataSource-->
                <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/PreciousMetal.mdb" SelectCommand="SELECT * FROM [Produtos_PM] WHERE ([Codigo] = ?)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Codigo" QueryStringField="cod" Type="Int32" />
                    </SelectParameters>
                </asp:AccessDataSource>

                <!--ListView-->
                <asp:ListView ID="ListViewDetalhes" runat="server" DataSourceID="AccessDataSource1">
                    <ItemTemplate>


                        <div style="width: 60%; float: left;">
                            <img src="Imagens/<%#Eval("Foto_Descricao") %>" style="width: 100%; text-align: center;" />
                        </div>

                        <div style="width: 30%; float: left; padding: 0px 0px 0px 30px;">
                            <!--Detalhes-->

                            <div style="text-align: left; font-size: 24.5px; color: #b73512;">
                                <!--Título-->
                                <%#Eval("Produto" )%>
                            </div>
                            <!--Título-->

                            <div style="text-align: left; font-size: 23.5px; font-weight: bold; color: #b73512;">
                                <!--Preço-->
                                <%#Eval("Preco"," € {0:N2}")  %>
                            </div>
                            <!--Preço-->

                            <div style="padding-top: 30px; text-align: left; font-style: italic; font-size: 17px; color: white;">
                                <!--Quantidade-->
                                <%#Eval("Estoque" )%>  available
                            </div>
                            <!--Quantidade-->

                            <div style="padding-top: 40px; text-align: left; font-size: 18px; color: white;">
                                <!--Descricao-->
                                <%#Eval("Descricao") %>
                            </div>
                            <!--Descricao-->

                        </div>
                        <!--Detalhes Fim-->

                    </ItemTemplate>

                </asp:ListView>

                <!--DataPager-->
                <asp:DataPager ID="DataPager1" runat="server" PageSize="1" PagedControlID="ListViewDetalhes">
                </asp:DataPager>
                <br />

            </div>
            <!--Produtos Fechar-->

            <!--Rodapé-->
            <div style="width: 100%; float: right; padding: 15px 5px 5px 5px; font-family: Calibri; text-align: center; font-size: 14px; color: white;">
                Jade Ohara Mesquita | 130100033
                <br />
                Tópicos Especiais em Engenharia de Computação | Mestre Jean Antonie Vieira<br />
                9º Nível - Engenharia de Computação | Unipinhal - 27/03/2017<br />

            </div>
            <!--Rodapé Fim-->

        </div>
        <!--Tudo Fechar-->

    </form>
</body>
</html>
