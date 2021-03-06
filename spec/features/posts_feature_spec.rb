require 'rails_helper'

describe 'Posting' do

	before(:each) {  _create_and_login_test_user }

	context 'when there are no posts' do

		it 'should display a message' do
			visit posts_path
			expect(page).to have_content('No posts yet')
		end

	end

	context 'when there are posts' do

		before(:each) {_create_test_post_object }

		it 'should list the posts on the homepage' do
			visit posts_path
			expect(page).to have_content('test post')
		end

		it 'clicking on a post will take the user to a full size image' do
			visit posts_path
			page.find('.large-image-link').click
			expect(page).to have_content('test post')
			within('.lg-img-panel') { expect(page).to have_css 'img' }
		end

	end

	context 'creating posts' do

		it 'should allow a user to create posts from a form' do
			_create_post('test post', 'spec/images/example.jpeg')
			expect(page).to have_content('Thank you for posting...')
			expect(page).to have_content('test post')
		end

		it 'should display an error if the title is left out' do
			_create_post('', 'spec/images/example.jpeg')
			expect(page).to have_content('Your post must have a title')
		end

		it 'allows a user to add an image to a post' do
			_create_post('Another post', 'spec/images/example.jpeg')
			expect(page).to have_css 'img.uploaded-pic'
		end

		it 'allows the user to add a location to the post' do
			_create_post('Post with location', 'spec/images/example.jpeg', 'London, UK')
			expect(page).to have_css 'a', text: 'London, UK'
		end

	end

end