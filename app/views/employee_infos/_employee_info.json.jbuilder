json.extract! employee_info, :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url employee_info_url(employee_info, format: :json)
