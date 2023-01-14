class ActivityService 

    class << self 
      def get_url(url)
        conn = Faraday.new(url: 'http://www.boredapi.com')
      
        response = conn.get(url)
        JSON.parse(response.body, symbolize_names: true)
      end

      def find_activity(participants_num)
       get_url("/api/activity?participants=#{participants_num}")
      end
    end

end