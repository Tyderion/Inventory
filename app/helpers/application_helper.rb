module ApplicationHelper

  def create_autocomplete_hash(collection)
    array = Array.new
    collection.each { |thing| array << {label: thing.name, value: thing.id} }
    return array
  end
end
