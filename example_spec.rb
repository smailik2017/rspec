RSpec.describe "Ruby успешно выполняет" do
  it "сложение двух чисел" do
    expect(2+2).to be(5), 'не работает арифметическая операция' 
  end
  
  it "генерацию массива из диапозона" do
    expect([*1..10]).to include 5  
  end

  it "генерацию массива из диапозона" do
    expect([*1..10]).not_to include 100  
  end

end
