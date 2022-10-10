module Services
  class CollectionDayOfWeek
    def self.call
      new.call
    end

    def call
      { monday: 'понедельник', tuesday: 'вторник', wednesday: 'среда', thursday: 'четверг', friday: 'пятница', saturday: 'суббота', sunday: 'воскресенье' }
    end

  end
end

