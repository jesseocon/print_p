# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121212234941) do

  create_table "assets", :force => true do |t|
    t.string   "fpurl"
    t.string   "fp_filename"
    t.string   "fp_mimetype"
    t.boolean  "fp_isWriteable"
    t.integer  "fp_size"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "colors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "invitation_assets", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "asset_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "invitation_assets", ["invitation_id", "asset_id"], :name => "index_invitation_assets_on_invitation_id_and_asset_id"

  create_table "invitation_colors", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "color_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "invitation_colors", ["invitation_id", "color_id"], :name => "index_invitation_colors_on_invitation_id_and_color_id"

  create_table "invitation_menus", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "menu_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "invitation_menus", ["invitation_id", "menu_id"], :name => "index_invitation_menus_on_invitation_id_and_menu_id"

  create_table "invitation_pricings", :force => true do |t|
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "pricing_cat_id"
  end

  create_table "invitation_programs", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "program_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "invitation_programs", ["invitation_id", "program_id"], :name => "index_invitation_programs_on_invitation_id_and_program_id"

  create_table "invitation_rsvps", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "rsvp_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "invitation_rsvps", ["invitation_id", "rsvp_id"], :name => "index_invitation_rsvps_on_invitation_id_and_rsvp_id"

  create_table "invitation_seasons", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "season_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "invitation_seasons", ["invitation_id", "season_id"], :name => "index_invitation_seasons_on_invitation_id_and_season_id"

  create_table "invitation_styles", :force => true do |t|
    t.integer  "invitation_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "style_id"
  end

  add_index "invitation_styles", ["invitation_id", "style_id"], :name => "index_invitation_styles_on_invitation_id_and_style_id"

  create_table "invitation_thank_you_cards", :force => true do |t|
    t.integer  "invitation_id"
    t.integer  "thank_you_card_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "invitation_thank_you_cards", ["invitation_id", "thank_you_card_id"], :name => "inviation_and_tycard_id_index", :unique => true

  create_table "invitations", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "color_id"
    t.integer  "style_id"
    t.integer  "season_id"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.boolean  "featured"
    t.integer  "invitation_pricing_id"
  end

  add_index "invitations", ["color_id"], :name => "index_invitations_on_color_id"
  add_index "invitations", ["invitation_pricing_id"], :name => "index_invitations_on_invitation_pricing_id"
  add_index "invitations", ["season_id"], :name => "index_invitations_on_season_id"
  add_index "invitations", ["style_id"], :name => "index_invitations_on_style_id"

  create_table "menu_colors", :force => true do |t|
    t.integer  "menu_id"
    t.integer  "color_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "menu_colors", ["menu_id", "color_id"], :name => "index_menu_colors_on_menu_id_and_color_id"

  create_table "menu_seasons", :force => true do |t|
    t.integer  "menu_id"
    t.integer  "season_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "menu_seasons", ["menu_id", "season_id"], :name => "index_menu_seasons_on_menu_id_and_season_id"

  create_table "menu_styles", :force => true do |t|
    t.integer  "menu_id"
    t.integer  "style_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "menu_styles", ["menu_id", "style_id"], :name => "index_menu_styles_on_menu_id_and_style_id"

  create_table "menus", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "mimage_file_name"
    t.integer  "mimage_file_size"
    t.string   "mimage_content_type"
    t.datetime "mimage_updated_at"
  end

  create_table "pricing_cats", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "program_colors", :force => true do |t|
    t.integer  "program_id"
    t.integer  "color_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "program_seasons", :force => true do |t|
    t.integer  "program_id"
    t.integer  "season_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "program_styles", :force => true do |t|
    t.integer  "program_id"
    t.integer  "style_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "relationships", :force => true do |t|
    t.integer  "alpha_id"
    t.integer  "beta_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relationships", ["alpha_id", "beta_id"], :name => "index_relationships_on_alpha_id_and_beta_id", :unique => true
  add_index "relationships", ["alpha_id"], :name => "index_relationships_on_alpha_id"
  add_index "relationships", ["beta_id"], :name => "index_relationships_on_beta_id"

  create_table "rsvp_colors", :force => true do |t|
    t.integer  "rsvp_id"
    t.integer  "color_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rsvp_colors", ["rsvp_id", "color_id"], :name => "index_rsvp_colors_on_rsvp_id_and_color_id"

  create_table "rsvp_pricings", :force => true do |t|
    t.integer  "quantity"
    t.float    "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rsvp_seasons", :force => true do |t|
    t.integer  "rsvp_id"
    t.integer  "season_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rsvp_seasons", ["rsvp_id", "season_id"], :name => "index_rsvp_seasons_on_rsvp_id_and_season_id"

  create_table "rsvp_styles", :force => true do |t|
    t.integer  "rsvp_id"
    t.integer  "style_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rsvp_styles", ["rsvp_id", "style_id"], :name => "index_rsvp_styles_on_rsvp_id_and_style_id"

  create_table "rsvps", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.string   "rsvpsimage_file_name"
    t.integer  "rsvpsimage_file_size"
    t.string   "rsvpsimage_content_type"
    t.datetime "rsvpsimage_updated_at"
    t.string   "rsvp_pricing_id"
  end

  add_index "rsvps", ["rsvp_pricing_id"], :name => "index_rsvps_on_rsvp_pricing_id"

  create_table "save_the_date_colors", :force => true do |t|
    t.integer  "save_the_date_id"
    t.integer  "color_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "save_the_date_seasons", :force => true do |t|
    t.integer  "save_the_date_id"
    t.integer  "season_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "save_the_date_styles", :force => true do |t|
    t.integer  "save_the_date_id"
    t.integer  "style_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "save_the_dates", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_file_name"
    t.integer  "image_file_size"
    t.string   "image_content_type"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "seasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "styles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "thank_you_card_colors", :force => true do |t|
    t.integer  "thank_you_card_id"
    t.integer  "color_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "thank_you_card_colors", ["thank_you_card_id", "color_id"], :name => "ty_id_and_color_id_index", :unique => true

  create_table "thank_you_card_seasons", :force => true do |t|
    t.integer  "thank_you_card_id"
    t.integer  "season_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "thank_you_card_seasons", ["thank_you_card_id", "season_id"], :name => "ty_id_and_season_id_index", :unique => true

  create_table "thank_you_card_styles", :force => true do |t|
    t.integer  "thank_you_card_id"
    t.integer  "style_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "thank_you_card_styles", ["thank_you_card_id", "style_id"], :name => "ty_id_and_style_id_index", :unique => true

  create_table "thank_you_cards", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "tyimage_file_name"
    t.integer  "tyimage_file_size"
    t.string   "tyimage_content_type"
    t.datetime "tyimage_updated_at"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end
