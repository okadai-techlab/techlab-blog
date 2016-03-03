require 'rails_helper'

RSpec.describe Admins::ArticlesController, type: :controller do
  describe 'GET #index' do
    # 全てのarticleのデータが@articlesに入れること
    it "assigns all articles to @articles"
    # admin/articles#indexテンプレートをrenderすること
    it "renders the admin/index template"
  end

  describe 'GET #show' do
    # @articleに要求されたarticleをassignすること
    it "assigns the requested article to @article"
    # admin/articles#showテンプレートを表示すること
    it "renders the admin/show template"
  end

  describe 'GET #new' do
    # @articleに新しいarticleを割り当てること
    it "assigns a new article to @article"
    # admin/articles#newテンプレートを表示すること
    it "renders the admin/new template"
  end

  describe 'GET #edit' do
    # @articleに要求されたarticleをassignすること
    it "assigns the requested article to @article"
    # admin/articles#editテンプレートを表示すること
    it "redners the admin/edit template"
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      # データベースに新しいarticleを保存すること
      it "saves the new article in the database"
      # admin/articles#indexにリダイレクトすること
      it "redirect to admin/articles#index"
    end

    context 'with invalid attributes' do
      # データベースに新しいarticleを保存しないこと
      it "does not save the new article in the database"
      # admin/articles#newテンプレートを再表示すること
      it "re-renders the admin/articles#new template"
    end
  end

  describe 'PATCH #update' do
    context 'with valid attributes' do
      # データベースのarticleを更新すること
      it "updates the article in the database"
      # admin/articles#indexにリダイレクトすること
      it "redirect to admin/articles#index"
    end

    context 'with invalid attributes' do
      # データベースのarticleを更新しないこと
      it "does not update the article in the database"
      # admin/articles#editテンプレートを再表示すること
      it "re-renders the admin/articles#edit template"
    end
  end
end
