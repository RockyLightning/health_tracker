class Cal < ActiveRecord::Base
  def cal_intake
    today = Time.now.strftime("%Y-%m-%d")
    intake = Cal.where(:date => today)
    intake.sum(:cals_consumed)
  end

  def stats
    {intake: cal_intake}
  end
end
