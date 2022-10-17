RSpec.describe 'Матчер match' do
  
  let (:products) do
    [
    { name: 'Процессор', price: 40_399 },
    { name: 'Материнская плата', price: 16_999 },
    { name: 'Видеокарта', price: 55_999 }
    ]
  end
  
  it 'успешно работает match' do
    expect(products).to match [
      { name: 'Процессор', price: a_value > 40_000 },
      { name: 'Материнская плата', price: a_value_between(10_000, 20_000) },
      { name: 'Видеокарта', price: a_value < 60_000 }
    ]
  end

  it 'успешно работает contain_exactly' do
    expect(products).to contain_exactly(
      { name: 'Видеокарта', price: a_value < 60_000 },
      { name: 'Процессор', price: a_value > 40_000 },
      { name: 'Материнская плата', price: a_value_between(10_000, 20_000) },
    )
  end

end