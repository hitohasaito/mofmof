module ApplicationHelper
  def converting_to_jpy(fee)
    "#{fee.to_s(:delimited, delimiter: ',')}円"
  end
end
