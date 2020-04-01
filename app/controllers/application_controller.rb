class ApplicationController < ActionController::API

  # All actions move thru authorization first
  before_action :authorized

  def authorized
    # When any routes get hit, the application controller checks if the user is
    # logged in, and throws an Unauthorized code with an error message if not.
    render json: {message: 'Don\'t forget to log in!'}, status: :unauthorized unless logged_in
  end

  def logged_in
    # Quick and simple check if there is a user currently logged in, this
    # converts the result of the current user function into a boolean to return.
    !!current_user
  end

  def current_user
    # If it can find and decode a token in the header, this grabs the given user
    # id from the result and finds it in the database, setting the current user
    # variable.
    if decoded_token
      user_id = decoded_token['user_id']
      @user = User.find(user_id)
    end
  end

  def decoded_token
    #  CHecks the header for existing auhorization, and grabs the token.
    # THen decodes it, returning the resulting hash
    if auth_header
      # Second value in the auth header is the encrypted token itself.
      token = auth_header.split(' ')[1]

      begin
        JWT.decode(token, secret)

      rescue JWT::DecodeError
        nil
      end
    end
  end

  def auth_header
    # Checks for and grabs the header labeled Authorization from the incoming request
    request.headers['Authorization']
  end

  def encode_token (payload)
    # Takes a given payload and throws it into an encrypted JWT token
    begin
      JWT.encode payload, secret, 'HS256'
    rescue JWT::EncodeError
      nil
    end
  end

  private

  def secret
    # Grabs the jwt secret from the encrypted rails credentials file
    Rails.application.credentials.Jwt_Secret
  end


end
