# frozen_string_literal: true

class DeleteSpamAccounts < ActiveRecord::Migration[5.2]
  def change
    Decidim::User.where("sign_in_count < 5 AND personal_url IS NOT NULL AND about IS NOT NULL AND about != ''").find_each do |user|
      form = Decidim::DeleteAccountForm.new(
        delete_reason: "Suspicious Account !"
      )
      user.remove_avatar!
      Decidim::DestroyAccount.call(user, form) do
        on(:ok) do
          Rails.logger.info "OK - user #{user.email} / #{user.id} was deleted"
        end

        on(:invalid) do
          Rails.logger.error "KO - cannot delete user #{user.email} / #{user.id}"
          _formform.errors.values.each do |error|
            Rails.logger.error error
          end
        end
      end
    end
  end
end
