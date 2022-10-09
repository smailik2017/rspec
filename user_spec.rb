require_relative 'user'

u = User.new
u.f_name = 'ivan'
u.s_name = 'ivanovich'
u.l_name = 'ivanov'

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
  
  it "атрибут f_name возвращает строку" do
    expect(u.f_name.class == String).to be true  
  end

  it "атрибут s_name возвращает строку" do
    expect(u.s_name.class == String).to be true  
  end

  it "атрибут l_name возвращает строку" do
    expect(u.l_name.class == String).to be true  
  end
end
