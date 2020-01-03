require 'rails_helper'

RSpec.describe Exposition::TagsController, type: :controller do
  routes { Exposition::Engine.routes }

  describe "GET #show" do
    it "finds the given tag" do
      tag = create(:tag)

      get :show, params: { id: tag }

      expect(assigns(:tag)).to eq(tag)
    end

    it "finds all the published posts ordered by date with the tag" do
      tag = create(:tag)
      tagged_older_post = create(:post, published: true, tags: [tag])
      tagged_newer_post = create(:post, published: true, tags: [tag])
      tagged_unpublished_post = create(:post, published: false, tags: [tag])
      untagged_post = create(:post, published: true)

      tagged_older_post.published_at = Date.today - 2.days
      tagged_newer_post.published_at = Date.today
      tagged_older_post.save!
      tagged_newer_post.save!
      get :show, params: { id: tag }

      expect(assigns(:taggables)).to eq([tagged_newer_post, tagged_older_post])
    end

    it "paginates the results in chunks of 10" do
      tag = create(:tag)
      posts = FactoryBot.create_list(:post, 11, published: true, tags: [tag])

      get :show, params: { id: tag }

      expect(assigns(:taggables).count).to eq(10)
    end
  end
end
