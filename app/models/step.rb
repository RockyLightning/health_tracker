class Step < ActiveRecord::Base
  def avg_steps
    s = Step.sum(:steps_taken)
    avg = s/Step.count
  end

  def stats
    {avg_steps: avg_steps}
  end
end
