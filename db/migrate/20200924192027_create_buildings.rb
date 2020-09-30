class CreateBuildings < ActiveRecord::Migration[6.0]
	def change
		enable_extension 'postgis'
		create_table :buildings do |t|
			t.multi_polygon :coordinates, geographic: true
			t.string :borough
			t.string :bin
			t.string :block
			t.string :lot
			t.string :des_addres
			t.string :circa
			t.string :date_low
			t.string :date_high
			t.string :date_combo
			t.string :alt_date_1
			t.string :alt_date_2
			t.string :arch_build
			t.string :own_devel
			t.string :alt_arch_1
			t.string :alt_arch_2
			t.string :style_prim
			t.string :style_sec
			t.string :style_oth
			t.string :mat_sec
			t.string :mat_prim
			t.string :mat_third
			t.string :mat_four
			t.string :mat_other
			t.string :use_orig
			t.string :use_other
			t.string :build_type
			t.string :build_oth
			t.string :notes
			t.string :build_nme
			t.string :hist_dist
			t.string :lm_orig
			t.string :lm_new
			t.timestamps
		end
		add_index :buildings, :coordinates, using: :gist
	end
end
