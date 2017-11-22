class CreateUserGiftAssignment::V20171122141114 < LuckyMigrator::Migration::V1
  def migrate
    create :user_gift_assignments do
      add giftee_id : Int32
      add gifter_id : Int32
      add status : String
    end

    execute "ALTER TABLE ONLY user_gift_assignments ALTER COLUMN status SET DEFAULT 'open';"
  end

  def rollback
    drop :user_gift_assignments
  end
end
