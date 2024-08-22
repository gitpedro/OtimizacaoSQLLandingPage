<%@ Page Title="Otimização de Consultas PL/SQL com IA" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Otimizacao.aspx.cs" Inherits="OtimizacaoSQLLandingPageWebForms.Otimizacao" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Otimização de Consultas PL/SQL com IA</h1>
        <p class="lead">Melhore o desempenho de suas consultas PL/SQL com nossa ferramenta de otimização baseada em IA.</p>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2>Demonstração Interativa</h2>
            <asp:TextBox ID="ConsultaInput" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Insira sua consulta PL/SQL aqui"></asp:TextBox>
            <asp:Button ID="AnalisarBtn" runat="server" Text="Analisar Consulta" CssClass="btn btn-primary" OnClick="AnalisarBtn_Click" />
            
            <asp:Panel ID="ResultadoPanel" runat="server" Visible="false" CssClass="mt-4">
                <h3>Sugestões de Otimização:</h3>
                <asp:BulletedList ID="SugestoesList" runat="server" CssClass="list-group"></asp:BulletedList>
                
                <h3>Comparação de Desempenho:</h3>
                <asp:Literal ID="DesempenhoLiteral" runat="server"></asp:Literal>
            </asp:Panel>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <h2>Benefícios</h2>
            <ul>
                <li>Melhoria significativa no desempenho das consultas</li>
                <li>Análise automatizada e sugestões inteligentes</li>
                <li>Economia de tempo para desenvolvedores</li>
                <li>Integração fácil com sistemas existentes</li>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 text-center">
            <h2>Comece a otimizar suas consultas hoje!</h2>
            <asp:Button ID="SolicitarDemoBtn" runat="server" Text="Solicitar Demo" CssClass="btn btn-success btn-lg" OnClick="SolicitarDemoBtn_Click" />
        </div>
    </div>
</asp:Content>