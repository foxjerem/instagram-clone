def _create_post(title, filepath)
	visit posts_path
	click_link 'New Post'
	fill_in 'Title', with: title
	attach_file 'Picture', Rails.root.join(filepath)
	click_button 'Post'
end

def _sign_up_test_user
	visit posts_path
	click_link 'Sign Up'
	fill_in 'user_email', with: 'test@test.com'
	fill_in 'user_password', with: '12345678'
	fill_in 'user_password_confirmation', with: '12345678'
	click_on 'Sign up'
end

def _sign_in_test_user
	visit posts_path
	click_link 'Sign In'
	fill_in 'user_email', with: 'test@test.com'
	fill_in 'user_password', with: '12345678'
	click_on 'Sign in'
end

def _sign_out
	visit posts_path
	click_link 'Sign Out'
end

