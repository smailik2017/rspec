require_relative '../../lib/services/collection_generator'

module ArrayBuilder
  def service_object(range)
    Services::CollectionGenerator.call(range.begin, range.end)
  end

  def array_rand(range, count=10)
    count.times.map { rand(1..100) }
  end
end
