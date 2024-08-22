$(document).ready(function () {
    $('#analisarBtn').click(function () {
        var consulta = $('#consultaInput').val();
        $.post('/Otimizacao/AnalisarConsulta', { consulta: consulta }, function (data) {
            $('#sugestoes').empty();
            $.each(data.sugestoes, function (i, sugestao) {
                $('#sugestoes').append($('<li>').text(sugestao));
            });
            $('#desempenho').html('Tempo Original: ' + data.tempoOriginal + '<br>Tempo Otimizado: ' + data.tempoOtimizado);
            $('#resultado').show();
        });
    });
});