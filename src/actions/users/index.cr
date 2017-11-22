class Users::Index < BrowserAction
  action do
    render user_names: ["Sarah", "Maria", "Pedro"]
  end
end
