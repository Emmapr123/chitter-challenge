feature 'homepage' do
  scenario 'A user can sign up' do 
    visit '/'
    click_on 'Sign up'
    fill_in 'username', with: 'Test User'
    fill_in 'email', with: 'example@email.com'
    fill_in 'password', with: 'password'
    click_on 'Sign up'
    expect(page).to have_content 'What is on your mind Test User?'
  end

  scenario 'A user can log in' do 
    User.create(email: 'test@example.com', password: 'password123')

    visit '/'
    click_on 'Log in'
    fill_in 'username', with: 'Test User'
    fill_in 'email', with: 'example@email.com'
    fill_in 'password', with: 'password'
    click_on 'Log in'
    expect(page).to have_content 'What is on your mind Test User?'
  end 
end 

feature '/home' do 
  scenario 'you get greeted by a list of tweets' do 
    visit '/home' 
    expect(page).to have_content "my first tweet"
  end 
end 