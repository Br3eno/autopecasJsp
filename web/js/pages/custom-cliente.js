/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
var a = 0;
$(document).ready(function () {



    $('#canc-form').click(function () {
        $('#form-conteudo').css('display', 'none');
        $('.botao-tipo').each(function () {
            $(this).removeClass('active');
        });

    });

    $('.pessoa').change(function () {
        if ($(this).val() === 'FISICA') {
            $('#form-conteudo').css('display', 'block');
            console.log('FISICA');
            $('#label-rg-ie').text('RG');
            $('#label-cpf-cnpj').text('CPF');
            $('#label-name-raz').text('Nome Completo');
            $('#div-gender').css('display', 'block');
            $('#fantasia').css('display', 'none');


        } else {
            console.log('JURIDICA');
            $('#form-conteudo').css('display', 'block');
            $('#label-rg-ie').text('IE');
            $('#label-cpf-cnpj').text('CNPJ');
            $('#label-name-raz').text('Razao Social');
            $('#div-gender').css('display', 'none');
            $('#fantasia').css('display', 'block');
        }
    });

    $('.buttonFinish').click(function () {
        if ($(this).text() === 'Enviar') {
            $('#formProduto').submit();
        }
    });

});

function updateDomFromModal(id) {

}

function preparaModal(id) {
    var nome = $('#nome-' + id).text();
    var doc = $('#doc-' + id).text();
    var reg = $('#reg-' + id).text();
    var tipo = $('#tipo-' + id).text();
    a = id;
    $('#mNome').val(nome);
    $('#mCpf').val(doc);
    $('#mRg').val(reg);
//    $('#mTipo').val(tipo);
//    enviaUpdate(id, nome, doc, reg);
}

function preparaUpdate() {

    var nome = $('#mNome').val();
    var doc = $('#mCpf').val();
    var reg = $('#mRg').val();
//
    enviaUpdate(a, nome, doc, reg);
}

function enviaUpdate(id, nome, doc, reg) {
    var updateRequest = new XMLHttpRequest();
    updateRequest.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            
        } else {
        }
    }
    updateRequest.open("PUT", "cliente?id=" + id + "&nome=" + nome + "&cpf=" + doc + "&reg=" + reg);
    updateRequest.setRequestHeader("Content-type", "multipart/form-data");
    updateRequest.send();

    $('#nome-' + id).text(nome);
    $('#doc-' + id).text(doc);
    $('#reg-' + id).text(reg);
}

function deletaCliente(id) {
    var deleteRequest = new XMLHttpRequest();
    deleteRequest.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            $("#line-" + id).remove();
        } else {
        }
    }
    deleteRequest.open("DELETE", "cliente?id=" + id);
    deleteRequest.setRequestHeader("Content-type", "multipart/form-data");
    deleteRequest.send();
}

