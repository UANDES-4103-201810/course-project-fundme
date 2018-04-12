json.extract! project, :id, :image, :video, :main_picture, :goal_amount, :category, :description, :marckdown, :days_to_go, :status, :title, :created_at, :updated_at
json.url project_url(project, format: :json)
