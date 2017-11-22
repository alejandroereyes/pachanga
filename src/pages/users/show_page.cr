class Users::ShowPage < MainPage
  needs id : String

  render do
    h4 "showing the show page for #{@id}"
  end
end
