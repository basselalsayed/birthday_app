feature '/birthday' do 
  scenario 'it displays birthday correctly' do 
    visit '/'
    fill_in('name', with: 'gregor')
    fill_in('birth_day', with: '11')
    select('January', from: 'birth_month')
    click_button('Go!')
    expect(page).to have_content('Happy Birthday gregor!')
  end
end
