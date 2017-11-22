class CreateUsers::V20171122140600 < LuckyMigrator::Migration::V1
  def migrate
    create :users do
     add first_name : String
     add last_name : String
     add email : String
     add password : String
    end

    execute "CREATE UNIQUE INDEX users_email_index ON users (email);"
  end

  def rollback
    drop :users
  end
end
