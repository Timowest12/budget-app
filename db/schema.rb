# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_220_328_205_405) do
  enable_extension 'plpgsql'

  create_table 'entities', force: :cascade do |t|
    t.integer 'AuthorId'
    t.string 'Name'
    t.decimal 'Amount'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'groups', force: :cascade do |t|
    t.string 'Name'
    t.string 'Icon'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id', null: false
    t.index ['user_id'], name: 'index_groups_on_user_id'
  end

  create_table 'groups_spendings', id: false, force: :cascade do |t|
    t.bigint 'group_id', null: false
    t.bigint 'spending_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[group_id spending_id], name: 'index_groups_spendings_on_group_id_and_spending_id'
  end

  create_table 'spendings', force: :cascade do |t|
    t.string 'name'
    t.decimal 'amount'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'user_id', null: false
    t.bigint 'group_id', null: false
    t.index ['group_id'], name: 'index_spendings_on_group_id'
    t.index ['user_id'], name: 'index_spendings_on_user_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'Name', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_users_on_reset_password_token', unique: true
  end

  add_foreign_key 'groups', 'users'
  add_foreign_key 'spendings', 'groups'
  add_foreign_key 'spendings', 'users'
end
