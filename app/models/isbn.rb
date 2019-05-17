class Isbn

    def self.is_valid?(code)
    	return code.present? && code.to_i > 0 && code.size == 13
    end

end
