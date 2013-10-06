class Flowchart < ActiveRecord::Base
  belongs_to :scenario

  def build
    flowchart = self
    Graph do
      eval(flowchart.dot)

      save("#{Rails.root}" + flowchart.scenario.name, :png)
    end
  end
end
