module ApplicationHelper
    def resource_name
        :user
      end
    
      def resource
        @resource ||= User.new
      end
    
      def devise_mapping
        @devise_mapping ||= Devise.mappings[:user]
      end

      def is_active(action)       
        params[:action] == action ? "active" : nil        
      end
end
