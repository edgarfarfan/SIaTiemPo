module Response
    
  def respond_with obj
    render json: obj, status: :ok
  end   
end