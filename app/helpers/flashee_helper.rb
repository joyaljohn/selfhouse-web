
module FlasheeHelper
  def flashee_for flash_type
    case flash_type.to_s
      when "success"
        "alert alert-success"
      when "error"
        "alert alert-danger"
      when "alert"
        "alert alert-warning"
      when "info"
        "alert alert-primary"
      else
        flash_type.to_s
    end
  end
end
