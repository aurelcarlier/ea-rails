FactoryBot.define do
  factory :user do
    firstname 'John'
    lastname  'Doe'
    email 'john_doe@mail.com'
    password 'password'
    role 'client'
  end

  factory :adminUser, class: User do
    firstname 'Admin'
    lastname  'User'
    email 'admin_user@mail.com'
    password 'admin_password'
    role 'admin'
  end
end
