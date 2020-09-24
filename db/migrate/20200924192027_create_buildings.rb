class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    enable_extension "postgis"
    create_table :buildings do |t|
      t.string :borough
      t.string :address
      t.string :construction_date
      t.string :architect
      t.string :developer
      t.string :style
      t.string :material_1
      t.string :material_2
      t.string :use_type
      t.string :build_type
      t.string :notes
      t.string :historical_district
      t.st_point :building_lonlat, geographic: true

      t.timestamps
    end
    add_index :buildings, :building_lonlat, using: :gist
  end
end
