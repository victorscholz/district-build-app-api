class CreateBuildings < ActiveRecord::Migration[6.0]
	def change
		enable_extension 'postgis'
		create_table :buildings do |t|
			t.multi_polygon :coordinates, geographic: true
			t.string :borough
			t.string :address
			t.string :build_date
			t.string :architect
			t.string :developer
			t.string :style
			t.string :secondary_material
			t.string :primary_material
			t.string :original_use
			t.string :build_type
			t.string :historical_district
			t.timestamps
		end
		add_index :buildings, :coordinates, using: :gist
	end
end
