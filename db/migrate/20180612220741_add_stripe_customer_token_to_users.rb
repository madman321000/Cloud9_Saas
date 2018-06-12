class AddStripeCustomerTokenToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :strike_customer_token, :string
  end
end
