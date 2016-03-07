class Cal < ActiveRecord::Base
  def intake
    today = Time.now.strftime("%Y-%m-%d")
    intake = Cal.where(:date => today)
    intake.sum(:cals_consumed)
  end

  def stats
    {intake: intake}
  end
end
