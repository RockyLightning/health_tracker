class WeighIn < ActiveRecord::Base
  validates :date, presence: true, uniqueness: true

  def weight_change
    low_weight = WeighIn.minimum(:weight)
    high_weight = WeighIn.maximum(:weight)
    diff = high_weight - low_weight
  end

  def stats
    {diff: weight_change}
  end
end
