class FlowchartObserver < ActiveRecord::Observer

  def before_save(flowchart)
    dir_path = "#{Rails.root}/public/flowcharts/#{flowchart.scenario.id}"
    FileUtils.mkdir_p(dir_path) unless File.exist?(dir_path)

    Graph do
      eval(flowchart.dot)

      save("#{dir_path}/#{flowchart.scenario.title}", :svg)
    end

    flowchart.image = "/flowcharts/#{flowchart.scenario.id}/#{flowchart.scenario.title}.svg"
  end

  def after_destroy(flowchart)
    dir_path = "#{Rails.root}/public/flowcharts/#{flowchart.scenario.id}"
    FileUtils.rm_rf(dir_path) if File.exist?(dir_path)
  end

end

