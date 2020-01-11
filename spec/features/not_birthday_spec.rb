feature 'not_birthday' do 
  scenario 'it states the number of days until birthday' do 
    visit '/'
    fill_in('name', with: 'gregor')
    fill_in('birth_day', with: '21')
    select('January', from: 'birth_month')
    click_button('Go!')
    expect(page).to have_content 'Your birthday will be in 10 days, gregor'
  end
end
