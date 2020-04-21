require "administrate/base_dashboard"

class TechnicianDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    fname: Field::String,
    lname: Field::String,
    avatar: Field::String,
    active: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    group: Field::String,
    start_date: Field::DateTime,
    leave_date: Field::DateTime,
    email: Field::String,
    vehicle_operator: Field::Boolean,
    hourly_labor_rate_cents: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  id
  fname
  lname
  avatar
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  id
  fname
  lname
  avatar
  active
  created_at
  updated_at
  group
  start_date
  leave_date
  email
  vehicle_operator
  hourly_labor_rate_cents
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  fname
  lname
  avatar
  active
  group
  start_date
  leave_date
  email
  vehicle_operator
  hourly_labor_rate_cents
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how technicians are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(technician)
  #   "Technician ##{technician.id}"
  # end
end
