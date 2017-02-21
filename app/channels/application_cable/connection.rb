module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    private
      def find_verified_user
        if current_user = env['warden'].user
          current_user
        else
          reject_unauthorized_connection
        end
      end


    # identified_by :current_receiver_id

    # def connect
    #   self.current_receiver_id = cookies.encrypted['receiver_id']
    # end

  end
end
