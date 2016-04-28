class Step < ActiveRecord::Base
  def avg_steps
    s = Step.sum(:steps_taken)
    unless Step.count == 0
      avg = s/Step.count
    else
      avg = 0
    end
  end

  def stats
    {avg_steps: avg_steps}
  end
end
