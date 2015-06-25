class CreateBins < ActiveRecord::Migration
  def change
    create_table :bins do |t|
      t.string :borough
      t.string :site_type
      t.string :site_name
      t.string :address
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
