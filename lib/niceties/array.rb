class Array
  def tidy
    select { it.present? }
  end
end
