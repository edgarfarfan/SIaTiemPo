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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20181103155816) do

  create_table "accions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "buses", force: :cascade do |t|
    t.string   "registration_tag"
    t.integer  "capacity"
    t.boolean  "disability"
    t.date     "create_date"
    t.boolean  "dog_service"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "buses_routes", id: false, force: :cascade do |t|
    t.integer "bus_id"
    t.integer "route_id"
    t.index ["bus_id"], name: "index_buses_routes_on_bus_id"
    t.index ["route_id"], name: "index_buses_routes_on_route_id"
  end

  create_table "logs", force: :cascade do |t|
    t.datetime "date_start"
    t.string   "description"
    t.integer  "accion_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["accion_id"], name: "index_logs_on_accion_id"
    t.index ["user_id"], name: "index_logs_on_user_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string   "description"
    t.integer  "id_father"
    t.string   "link"
    t.string   "link_image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "onlineroutes", force: :cascade do |t|
    t.integer  "long_degrees"
    t.integer  "long_min"
    t.integer  "long_seg"
    t.integer  "long_coordinate"
    t.integer  "lat_degrees"
    t.integer  "lat_min"
    t.integer  "lat_seg"
    t.integer  "lat_coordinate"
    t.integer  "bus_id"
    t.integer  "route_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["bus_id"], name: "index_onlineroutes_on_bus_id"
    t.index ["route_id"], name: "index_onlineroutes_on_route_id"
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "long_degrees"
    t.integer  "long_min"
    t.integer  "long_seg"
    t.integer  "long_coordinate"
    t.integer  "lat_degrees"
    t.integer  "lat_min"
    t.integer  "lat_seg"
    t.integer  "lat_coordinate"
    t.string   "imac"
    t.integer  "user_id"
    t.integer  "route_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["route_id"], name: "index_requests_on_route_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "rols", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rols_menus", id: false, force: :cascade do |t|
    t.integer "rol_id"
    t.integer "menu_id"
    t.index ["menu_id"], name: "index_rols_menus_on_menu_id"
    t.index ["rol_id"], name: "index_rols_menus_on_rol_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string   "description"
    t.boolean  "cyclic"
    t.integer  "time_route"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "routes_stations", id: false, force: :cascade do |t|
    t.integer "station_id"
    t.integer "route_id"
    t.index ["route_id"], name: "index_routes_stations_on_route_id"
    t.index ["station_id"], name: "index_routes_stations_on_station_id"
  end

  create_table "routes_timetables", id: false, force: :cascade do |t|
    t.integer "timetable_id"
    t.integer "route_id"
    t.index ["route_id"], name: "index_routes_timetables_on_route_id"
    t.index ["timetable_id"], name: "index_routes_timetables_on_timetable_id"
  end

  create_table "servicedays", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "description"
    t.string   "adress"
    t.integer  "long_degrees"
    t.integer  "long_min"
    t.integer  "long_seg"
    t.integer  "long_coordinate"
    t.integer  "lat_degrees"
    t.integer  "lat_min"
    t.integer  "lat_seg"
    t.integer  "lat_coordinate"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.time     "hour_star"
    t.string   "hour_end"
    t.integer  "serviceday_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["serviceday_id"], name: "index_timetables_on_serviceday_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "last_name"
    t.string   "document"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "rol_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["rol_id"], name: "index_users_on_rol_id"
  end

end
