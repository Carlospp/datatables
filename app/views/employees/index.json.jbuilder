json.array!(@employees) do |employee|
  json.extract! employee, :id, :nombre, :fecnac, :direccion, :position_id
  json.url employee_url(employee, format: :json)
end
