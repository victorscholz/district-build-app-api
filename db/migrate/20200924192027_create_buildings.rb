class CreateBuildings < ActiveRecord::Migration[6.0]
	def change
		enable_extension 'postgis'
		create_table :buildings do |t|
			t.st_point :coordinates, geographic: true
			t.string :borough
			t.string :des_addres
			t.string :date_combo
			t.string :arch_build
			t.string :own_devel
			t.string :style_prim
			t.string :mat_sec
			t.string :mat_prim
			t.string :mat_third
			t.string :use_orig
			t.string :build_type
			t.string :hist_dist
			t.timestamps
		end
		add_index :buildings, :coordinates, using: :gist
	end
end
