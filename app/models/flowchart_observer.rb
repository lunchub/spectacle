class FlowchartObserver < ActiveRecord::Observer

  def after_save(flowchart)
    dir_path = "#{Rails.root}/public/flowcharts"
    FileUtils.mkdir_p(dir_path) unless File.exist?(dir_path)

    Graph do
      eval(flowchart.dot)

      save("#{dir_path}/#{flowchart.scenario.title}", :png)
    end
  end

end
