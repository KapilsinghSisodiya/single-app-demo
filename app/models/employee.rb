class Employee < User

  def self.search(search)
    if search
      where('lower(first_name) LIKE :search OR lower(last_name) LIKE :search OR lower(email) LIKE :search OR lower(address) LIKE :search', { search: "%#{search}%" } )
    else
      all
    end
  end

end
