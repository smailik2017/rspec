require_relative 'user'

u = User.new
  u.f_name = 'иван'
  u.s_name = 'иванович'
  u.l_name = 'иванов'
  u.email = 'ivanov@example.com'

u1 = User.new
  u1.f_name = 'ivan'
  u1.s_name = 'ivanovich'
  u1.l_name = 'ivanov'
  u1.email = 'ivanov'

RSpec.describe "Класс User" do
  it "Есть атрибут f_name" do
    expect(u.respond_to?(:f_name)).to be true 
  end
  it "Есть атрибут s_name" do
    expect(u.respond_to?(:s_name)).to be true 
  end
  it "Есть атрибут l_name" do
    expect(u.respond_to?(:l_name)).to be true 
  end

  it "Есть атрибут email" do
    expect(u.respond_to?(:email)).to be true 
  end
  
  it "атрибут f_name возвращает строку" do
    expect(u.f_name.class == String).to be true  
  end

  it "атрибут s_name возвращает строку" do
    expect(u.s_name.class == String).to be true  
  end

  it "атрибут l_name возвращает строку" do
    expect(u.l_name.class == String).to be true  
  end

  it "атрибут email возвращает строку" do
    expect(u.email.class == String).to be true  
  end

  it "email is valid" do
    expect(u.check_email).to be true
  end

  it "name in russian" do
    expect(u.check_name).to be true
  end

  it "User Exception" do
    expect { u1.valid? }.to raise_error User::UserException
  end

end
