class UpdateUserFollowsCounts < ActiveRecord::Migration[5.2]
  def change
    Decidim::UserBaseEntity.find_each do |entity|
      follower_count = Decidim::Follow.where(followable: entity).count
      following_count = Decidim::Follow.where(decidim_user_id: entity.id).count

      # We use `update_columns` to skip Searchable callbacks
      entity.update_columns(
        followers_count: follower_count,
        following_count: following_count
      )
    end
  end
end
