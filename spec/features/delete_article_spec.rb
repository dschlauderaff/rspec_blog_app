require 'rails_helper'

RSpec.feature 'Delete an Article' do
  before do
    @article = Article.create(title: 'Title Ones', body: 'Body of article one')
  end

  scenario 'A user deletes an article' do
    visit '/'

    click_link @article.title
    click_link 'Delete Article'

    expect(page).to have_content('Article has been deleted')
    expect(current_path).to eq(root_path)
  end
end