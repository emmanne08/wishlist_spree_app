# This migration comes from spree_wishlist (originally 20091020183520)
class CreateWishedProducts < ActiveRecord::Migration
  def change
    create_table :wished_products do |t|
      t.references :variant
      t.references :wishlist
      t.text :remark

      t.timestamps
    end
  end
end
