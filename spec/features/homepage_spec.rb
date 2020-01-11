feature '/' do 
  scenario 'loads splsh page asking for birthday' do 
    visit '/'
    expect(page).to have_content 'Hello There!'
    expect(page).to have_content "What's your name?"
    expect(page).to have_content "When's your birthday?"
  end
end
