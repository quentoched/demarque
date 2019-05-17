class Isbn

	def self.is_valid?(code)
		return code.present? && code.to_i > 0 && code.size == 13 && (code[0..2] == "978" || code[0..2] == "979") && (code[0].to_i*1 + code[1].to_i*3 + code[2].to_i*1 + code[3].to_i*3 + code[4].to_i*1 + code[5].to_i*3 + code[6].to_i*1 + code[7].to_i*3 + code[8].to_i*1 + code[9].to_i*3 + code[10].to_i*1 + code[11].to_i*3)%10 == 10 - code[12].to_i
	end

end
