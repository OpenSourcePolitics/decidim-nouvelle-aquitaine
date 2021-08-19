class UpdateSearchIndexes < ActiveRecord::Migration[5.2]
  def change

    Decidim::SearchableResource.destroy_all

    Decidim::User.find_each(&:add_to_index_as_search_resource)
    Decidim::User.find_each(&:try_update_index_for_search_resource)

    Decidim::Comments::Comment.find_each(&:add_to_index_as_search_resource)

    Decidim::Assembly.find_each(&:add_to_index_as_search_resource)
    Decidim::ParticipatoryProcess.find_each(&:add_to_index_as_search_resource)
    Decidim::Debates::Debate.find_each(&:add_to_index_as_search_resource)
    Decidim::Budgets::Project.find_each(&:add_to_index_as_search_resource)
    Decidim::Blogs::Post.find_each(&:add_to_index_as_search_resource)

  end
end
