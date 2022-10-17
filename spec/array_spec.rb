RSpec.describe 'Массив в Ruby' do
  let(:empty_arr) { [] }

  context 'при обращении к итертатору' do
    it_behaves_like 'Enumerable', Array
  end
  
  context 'при обращении к квадратным скобкам', :enumerable do
    let(:arr) { [1, 2, 3, 4, 5] }
    it 'можно извлекать значения по индексу' do
      expect(arr).to respond_to :[]
      expect(arr[0]).to eq 1
      expect(arr[-1]).to eq 5
    end
    
    it 'можно перезаписывать элементы по индексу' do
      arr[3] = 15
      expect(arr[3]).to eq 15
    end
    
    it 'можно создавать элементы' do
      expect(empty_arr).to respond_to :[]=
      empty_arr[3] = 15
      expect(empty_arr[3]).to be 15
      expect(empty_arr.size).to be 4
    end

  end
  
  context 'при обращении к методу' do
    it(:to_ary) { expect(empty_arr).to respond_to :to_ary }
  end

  it 'содержит только четные числа' do 
    expect([2, 4, 6, 8]).to all be_even
  end

  let(:arr) { [1, 2, 3] }
  it 'оператор << изменяет массив' do
    expect{ arr << 4 }.to change { arr.size }.by(1)
  end

  it 'оператор concat изменяет массив' do
    expect{ arr.concat([4, 5, 6]) }.to change { arr.size }.by(3)
    expect{ arr.concat([4, 5, 6]) }.to change { arr.size }.by_at_least(2)
    expect{ arr.concat([4, 5, 6]) }.to change { arr.size }.by_at_most(4)
  end

  it 'оператор << позволяет заполнять массив' do
    expect{ arr << 4 }.to change { arr.size }.from(3)
    expect{ arr << 5 }.to change { arr.size }.to(5)
    expect{ arr << 4 }.to change { arr.size }.from(5).to(6)
    expect{ arr << 4 }.to change { arr.size }.to(7).from(6)
  end


end
