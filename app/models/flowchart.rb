class Flowchart < ActiveRecord::Base
  def build
    flowchart = self
    Graph do
      eval(flowchart.dot)

      save("#{Rails.root}" + flowchart.scenario.name, :png)
    end
  end
end
