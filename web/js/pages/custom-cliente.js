/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function(){
   $('.pessoa').change(function(){
      if($(this).val() === 'FISICA'){
          console.log('FISICA');
          $('#label-rg-ie').text('RG');
          $('#label-cpf-cnpj').text('CPF');
          $('#label-name-raz').text('Nome Completo');
          $('#div-gender').css('display', 'block');
          
          
      }else{
          console.log('JURIDICA');
          $('#label-rg-ie').text('IE');
          $('#label-cpf-cnpj').text('CNPJ');
          $('#label-name-raz').text('Razao Social');
          $('#div-gender').css('display', 'none');
      }
   });
});


