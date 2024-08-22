using Microsoft.AspNetCore.Mvc;

namespace OtimizacaoSQLLandingPage.Controllers
{
    public class OtimizacaoController : Controller
    {
        private readonly ILogger<OtimizacaoController> _logger;

        public OtimizacaoController(ILogger<OtimizacaoController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult AnalisarConsulta([FromBody] string consulta)
        {
            _logger.LogInformation("Analisando consulta: {Consulta}", consulta);

            // Aqui voc� implementaria a l�gica real de an�lise da consulta
            // Por enquanto, vamos retornar um resultado mockado
            var resultado = new
            {
                ConsultaOriginal = consulta,
                Sugestoes = new[] { "Criar �ndice composto", "Usar hint /*+ INDEX */" },
                TempoOriginal = "2.5s",
                TempoOtimizado = "0.5s"
            };

            return Json(resultado);
        }
    }
}