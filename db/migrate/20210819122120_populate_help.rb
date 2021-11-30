# frozen_string_literal: true

class PopulateHelp < ActiveRecord::Migration[5.2]
  def change
    Decidim::Organization.find_each do |organization|
      Decidim::System::PopulateHelp.call(organization)
    end
  end
end
