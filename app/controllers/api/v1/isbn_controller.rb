class Api::V1::IsbnController < Api::ApiController

  def validate
    begin
     @isbn_code = params[:code]

      if Isbn.is_valid?(@isbn_code)
        return render :json =>{:message=> "ISBN #{@isbn_code} is valid !! :)"}, :status=> 200
      else
        raise "ISBN #{@isbn_code} is not valid"
      end
    rescue Exception => e
      return render :json =>{:errors=>e.message}, :status=> 402
    end
  end

end