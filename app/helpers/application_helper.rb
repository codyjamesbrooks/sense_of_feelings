module ApplicationHelper
  def chart_data(replies)
    replies.group_by(&:value)
           .transform_values(&:size)
           .sort_by(&:first) 
  end 

  def title_examples 
    ["a bunch of things", 
      "cool butt title",
      "This title is as cool as you are", 
      "A great poll", 
      "My teams feelsings"
    ].sample
  end 
end
