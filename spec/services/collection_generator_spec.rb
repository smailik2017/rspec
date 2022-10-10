require_relative '../../lib/services/collection_generator'

RSpec.describe Services::CollectionGenerator do
  context 'успешно выполняет' do
    let(:array_of_ten_elements) { Services::CollectionGenerator.call(1, 10) }

    it 'генерацию массива из диапозона' do
      expect(array_of_ten_elements).to eq [*1..10]
    end

    it 'генерацию массива и число 5 в него входит' do
      expect(array_of_ten_elements).to include 5
    end

    it 'генерацию массива и число 100 в него не входит' do
      expect(array_of_ten_elements).not_to include 100
    end
  end

  context 'возбуждает ошибку' do
    it 'если левая граница диапозона больше правой' do
      expect { Services::CollectionGenerator.call(10, 1) }.to raise_error(StandardError)
    end
  end

  context 'при некорректных входных данных:' do
    it 'строковые значения' do
      pending 'По хорошему нужно пробовать привести к диапозону'
      expect
    end
    
    xit 'массив' do

    end

    it 'объект'
  end

end