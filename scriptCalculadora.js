    console.log("Calculadora está funcionando!");

    // Calculo para mostrar quanto em um mês nosso cliente pode economizar em energia com o nosso monitoramento:
    function calcularEnergia() {
        var Kwh = Number(input_energia.value);
        var Bandeira = Number(input_bandeira.value);
        // Bandeiras alteram o valor
        var GRE = 0.94 * Kwh;
        var YEL = 2.98 * Kwh;
        var RED = 6.50 * Kwh;

        if (Bandeira == 1) {
            // Quantidade que o cliente terá de desconto com a nossa empresa:
            var totalPagar = GRE * 0.54;
            var totalEconomia = GRE - totalPagar;

            var seisMeses = totalEconomia * 6;
            var dozeMeses = totalEconomia * 12;

            // Mostrar o resultado:
            divEconomia.innerHTML = `• Você costuma pagar em média <b style="color: #FF0303;">R$${GRE.toFixed(2)}</b> por mês!
            <br>
            • Com o nosso monitoramento, nós prevemos que você pagaria cerca de <b style="color: yellow;">R$${totalPagar.toFixed(2)}</b> por mês
            <br>
            • Economizando assim um total de <b style="color: #16FF00;">R$${totalEconomia.toFixed(2)}</b> por mês!
            <br><br>

            • Em 6 meses você economizaria: <b style="color: #16FF00;">R$${seisMeses.toFixed(2)}</b> <br>
            • Em 12 meses você economizaria: <b style="color: #16FF00;">R$${dozeMeses.toFixed(2)}</b> <br><br>

            Faça agora o seu orçamento:<br>
        
            <button class="botaozinho">Orçamento</button>`; // Botão falso para complementar
        }
        if (Bandeira == 2) {
            var totalPagar = YEL * 0.56;
            var totalEconomia = YEL - totalPagar;

            var seisMeses = totalEconomia * 6;
            var dozeMeses = totalEconomia * 12;

            divEconomia.innerHTML = `• Você costuma pagar em média <b style="color: #FF0303;">R$${YEL.toFixed(2)} (taxa de R$2.98 por Kwh)</b> por mês!
            <br>
            • Com o nosso monitoramento, nós prevemos que você pagaria cerca de <b style="color: yellow;">R$${totalPagar.toFixed(2)}</b> por mês
            <br>
            • Economizando assim um total de <b style="color: #16FF00;">R$${totalEconomia.toFixed(2)}</b> por mês!
            <br><br>

            • Em 6 meses você economizaria: <b style="color: #16FF00;">R$${seisMeses.toFixed(2)}</b> <br>
            • Em 12 meses você economizaria: <b style="color: #16FF00;">R$${dozeMeses.toFixed(2)}</b>`;
        }
        if (Bandeira == 3) {
            var totalPagar = RED * 0.56;
            var totalEconomia = RED - totalPagar;

            var seisMeses = totalEconomia * 6;
            var dozeMeses = totalEconomia * 12;

            divEconomia.innerHTML = `• Você costuma pagar em média <b style="color: #FF0303;">R$${RED.toFixed(2)} (taxa de R$6.50 por Kwh)</b> por mês!
            <br>
            • Com o nosso monitoramento, nós prevemos que você pagaria cerca de <b style="color: yellow;">R$${totalPagar.toFixed(2)}</b> por mês
            <br>
            • Economizando assim um total de <b style="color: #16FF00;">R$${totalEconomia.toFixed(2)}</b> por mês!
            <br><br>

            • Em 6 meses você economizaria: <b style="color: #16FF00;">R$${seisMeses.toFixed(2)}</b> <br>
            • Em 12 meses você economizaria: <b style="color: #16FF00;">R$${dozeMeses.toFixed(2)}</b>`;
        }
    }

    function calcularArea() {
        var area = Number(input_largura.value) * Number(input_comprimento.value);
        var sensores = area / 10;

        var valor_por_area = sensores * 138.42;

        divArea.innerHTML = `Você precisa de <b>${sensores}</b> sensores. <br>
        Seu investimento seria de <b>R$${valor_por_area.toFixed(2)}</b>.`;
    }

    // Desenvolvido em conjunto com a equipe do projeto LuminusTech da Sprint 1 (1ADSB)