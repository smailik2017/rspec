RSpec.describe 'SET в Ruby' do
  let(:empty_set) { Set.new([]) }
  let(:s1) { Set.new([1, 2, 3, 4, 5]) }
  let(:s2) { Set.new([1, 2]) }
  let(:s3) { Set.new([3, 4, 5])}
  let(:s4) { Set.new([5, 6, 7]) }
  let(:s5) { Set.new([1, 2, 3, 4, 5, 6, 7]) }
  let(:s11) { Set.new([3, 4, 5, 1, 2]) }

  context 'при обращении к итертатору' do
    it_behaves_like 'Enumerable', Set
  end
  
  it 'можно создавать элементы через оператор <<' do
    empty_set << 1
    expect(empty_set.size).to be 1
  end

  it 'можно вычитать множества' do
    s = s1 - s2
    expect(s).to eq s3
  end

  it 'можно складывать множества' do
    s = s1 + s4
    expect(s).to eq s5
  end

  it 'равенство без порядка следование' do
    expect(s1).to eq s11
  end

end
