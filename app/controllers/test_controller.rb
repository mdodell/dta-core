class TestController < ApplicationController
    before_action :authenticate_user!

    def members_only
        headers = JSON.parse(cookies[:auth_cookie])
        uid = headers["uid"]
        token = headers["access-token"]
        client = headers["client"]

        update_auth_header
        debugger
        user = User.find_by_uid(uid)
        if !user || !user.valid_token?(token, client)
            render json: {error: "Usuario no autorizado."}, status: 401 
        else r
            render json: {
                data: user,
                token: token
            }
        end
    end
  end