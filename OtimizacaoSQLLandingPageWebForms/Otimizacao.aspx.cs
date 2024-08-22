using System;
using System.Collections.Generic;
using System.Web.UI;

namespace OtimizacaoSQLLandingPageWebForms
{
    public partial class Otimizacao : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void AnalisarBtn_Click(object sender, EventArgs e)
        {
            string consulta = ConsultaInput.Text;

            // Aqui você implementaria a lógica real de análise da consulta
            // Por enquanto, vamos usar resultados mockados
            List<string> sugestoes = new List<string>
            {
                "Criar índice composto",
                "Usar hint /*+ INDEX */"
            };

            string tempoOriginal = "2.5s";
            string tempoOtimizado = "0.5s";

            // Exibir resultados
            SugestoesList.DataSource = sugestoes;
            SugestoesList.DataBind();

            DesempenhoLiteral.Text = $"Tempo Original: {tempoOriginal}<br>Tempo Otimizado: {tempoOtimizado}";

            ResultadoPanel.Visible = true;
        }

        protected void SolicitarDemoBtn_Click(object sender, EventArgs e)
        {
            // Implementar lógica para solicitar demo
            Response.Write("<script>alert('Solicitação de demo enviada!');</script>");
        }
    }
}