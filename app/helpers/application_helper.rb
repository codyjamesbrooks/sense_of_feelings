module ApplicationHelper
  def chart_data(replies)
    no_result = { "😡" => 0, "🙁" => 0, "😐" => 0, "🙂" => 0, "😀" => 0 }
    poll_result = replies.group_by(&:value)
                        .transform_keys { |key| emoji_conversion(key) }
                        .transform_values(&:size)
    no_result.merge(poll_result).to_a
  end 
  
  def emoji_conversion(key)
    case key
    when "0"
      "😡"
    when "1"
      "🙁"
    when "2"
      "😐"
    when "3"
      "🙂"
    when "4"
      "😀"
    end
  end 

  def title_examples 
    ["a bunch of things", 
      "cool butt title",
      "This title is as cool as you are", 
      "A great poll", 
      "My teams feelsings"
    ].sample
  end 

  def library_options 
    { scales: {
        xAxis: { 
          ticks: { allowDecimals: false }
        }
      }
    }
  end 
end
