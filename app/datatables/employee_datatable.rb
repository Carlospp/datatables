class EmployeeDatatable < AjaxDatatablesRails::Base

  def_delegator :@view, :link_to
  def_delegator :@view, :h
  def_delegator :@view, :mail_to

  # or define them in one pass
  def_delegators :@view, :link_to, :h, :mailto, :edit_employee_path, :other_method, :employee_path, :delete

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['employees.nombre', 'employees.fecnac', 'employees.direccion','employees.position']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['employees.nombre', 'employees.fecnac', 'employees.direccion']
  end

  private

  def data
    records.map do |record|
      [
        # comma separated list of the values for each cell of a table row
        # example: record.attribute,
        record.nombre,
        record.fecnac,
        record.direccion,
        record.position,
        link_to("Ver", employee_path(record)),
        link_to("Editar", edit_employee_path(record)),
        link_to("Eliminar", record, method: :delete, data: { confirm: 'Are you sure?' })
      ]
    end
  end

  def get_raw_records
    Employee.includes(:position)
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
