class FlowchartObserver < ActiveRecord::Observer

  def after_save(flowchart)
    Graph do
      eval(flowchart.dot)

      save("#{Rails.root}/public/flowcharts/#{flowchart.scenario.title}", :png)
    end
  end

end
