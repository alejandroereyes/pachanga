class Users::IndexPage < MainPage
  needs user_names : Array(String)

  render do
    ul class: "user-list" do
      @user_names.each do |name|
        li name, class: "user-name"
      end
    end
  end
end
