require 'csv'

CSV.generate do |csv|
  column_names = %w(title content)
  csv << column_names
  @posts.each do |post|
    column_values = [
      post.title,
      post.content
    ]
    csv << column_values
  end
end