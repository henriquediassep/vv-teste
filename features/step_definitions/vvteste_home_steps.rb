Dado('que eu acesse a página da VV Test') do
  @page.call(VVTesteHome).url_home_vvteste
end

E('acesse o menu "Pesquisa - QA"') do
  @page.call(VVTesteHome).access_pesquisa_qa
  @page.call(VVTestePesquisa).verify_page_load
end

Quando('eu preencher todos os campos obrigatórios') do
  @page.call(VVTestePesquisa).fill_personal_informations
  @page.call(VVTestePesquisa).fill_qa_informations
  @page.call(VVTestePesquisa).click_send_button 
end

Então('deve ser direcionado para uma página de sucesso') do
  expect(@page.call(VVTestePesquisa).verify_response_msg).to eq('Your form has been successfully submitted.')
end