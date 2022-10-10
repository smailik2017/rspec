require_relative '../../lib/services/collection_day_of_week'

KEYS = [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
VALUES = ["понедельник",                                                                 
          "вторник",                                         
          "среда",                                           
          "четверг",                                         
          "пятница",                                         
          "суббота",                                         
          "воскресенье"] 

RSpec.describe Services::CollectionDayOfWeek do
  context 'успешно создает hash' do
    let(:hash_day_of_week) { Services::CollectionDayOfWeek.call }

    it 'размером в 7' do
      expect(hash_day_of_week.length).to eq 7
    end

    it 'с ключами :moday, :tuesday ...' do
      expect(hash_day_of_week.keys).to eq KEYS
    end

    it 'обращаясь к которому через hash[:<day>] получаем название дня недели' do
      expect(hash_day_of_week.values).to eq VALUES
    end

  end
end
