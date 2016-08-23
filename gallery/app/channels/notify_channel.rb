class NotifyChannel < ApplicationCable::Channel
    def subscribed
        stream_from 'notifications'
    end
end

