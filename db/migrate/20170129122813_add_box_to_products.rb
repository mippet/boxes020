class AddBoxToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :box, foreign_key: true
  end
end
