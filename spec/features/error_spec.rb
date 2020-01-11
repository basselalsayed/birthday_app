feature 'error' do 
  scenario 'loads error page when parameters are missing' do 
    visit '/'
    click_button 'Go!'
    expect(page).to have_content 'All or some of the form fields are empty, please return to the homepage and try again'
  end
end