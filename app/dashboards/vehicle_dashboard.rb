require "administrate/base_dashboard"

class VehicleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    number: Field::String,
    group: Field::String,
    year: Field::String,
    make: Field::String,
    model: Field::String,
    trim: Field::String,
    color: Field::String,
    vtype: Field::String,
    fuel_type: Field::String,
    current_meter: Field::String,
    current_meter_date: Field::DateTime,
    status: Field::String,
    VIN: Field::String,
    license_plate: Field::String,
    registration_state: Field::String,
    ownership: Field::String,
    service_costs: Field::String,
    fuel_costs: Field::String,
    other_costs: Field::String,
    cost_meter: Field::String,
    meter_usage: Field::String,
    purchase_price: Field::String,
    purchase_date: Field::DateTime,
    warranty_expiration: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    name: Field::String,
    current_meter_value: Field::String,
    primary_meter_usage_per_day: Field::String,
    total_service_cost: Field::String,
    total_fuel_cost: Field::String,
    cost_per_meter: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
  number
  license_plate
  year
  make
  model
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
  id
  number
  group
  year
  make
  model
  trim
  color
  vtype
  fuel_type
  current_meter
  current_meter_date
  status
  VIN
  license_plate
  registration_state
  ownership
  service_costs
  fuel_costs
  other_costs
  cost_meter
  meter_usage
  purchase_price
  purchase_date
  warranty_expiration
  created_at
  updated_at
  name
  current_meter_value
  primary_meter_usage_per_day
  total_service_cost
  total_fuel_cost
  cost_per_meter
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
  number
  group
  year
  make
  model
  trim
  color
  vtype
  fuel_type
  current_meter
  current_meter_date
  status
  VIN
  license_plate
  registration_state
  ownership
  service_costs
  fuel_costs
  other_costs
  cost_meter
  meter_usage
  purchase_price
  purchase_date
  warranty_expiration
  name
  current_meter_value
  primary_meter_usage_per_day
  total_service_cost
  total_fuel_cost
  cost_per_meter
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

  # Overwrite this method to customize how vehicles are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(vehicle)
     vehicle.number
  end
end
