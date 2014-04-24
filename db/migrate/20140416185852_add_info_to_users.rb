class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :date_founded, :date
    add_column :users, :tax_num, :integer
    add_column :users, :business_type, :string
    add_column :users, :non_profit_status, :string
    add_column :users, :location_city, :string
    add_column :users, :location_state, :string
    add_column :users, :location_country, :string
    add_column :users, :primary_first_name, :string
    add_column :users, :primary_last_name, :string
    add_column :users, :primary_email, :string
    add_column :users, :primary_primary_address_one, :string
    add_column :users, :primary_primary_address_two, :string
    add_column :users, :primary_city, :string
    add_column :users, :primary_state, :string
    add_column :users, :primary_zip, :string
    add_column :users, :primary_phone, :string
    add_column :users, :total_income_more_than_fifty_thousand, :boolean
    add_column :users, :adjusted_gross_income, :integer
    add_column :users, :label_contract, :boolean
    add_column :users, :manager_contract, :boolean
    add_column :users, :booking_agent_contract, :boolean
    add_column :users, :attorney_contract, :boolean
    add_column :users, :BMI, :boolean
    add_column :users, :ASCAP, :boolean
    add_column :users, :SESAC, :boolean
    add_column :users, :SoundExchange, :boolean
    add_column :users, :other, :boolean
  end
end
