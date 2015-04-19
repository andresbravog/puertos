require 'rest-client'
# Gets the report request
#
module Puertos
  module Report
    class Request
      attr_accessor :response, :request

      # Retrieves the forecast data from portus-puertos
      # for the Barcelona point
      def get()
        @request = RestClient::Request.new(
          :method => :get,
          :url => 'http://portus.puertos.es/Portus_RT/portusgwt/rpc',
          :payload => '7|0|6|http://portus.puertos.es/Portus_RT/portusgwt/|71F7183B1AFBD1C68E9888D2C583629B|es.puertos.portus.main.client.service.PortusService|requestData|I|Z|1|2|3|4|4|5|5|5|6|1731|11|0|1|',
          :headers => {
            content_type: 'text/x-gwt-rpc; charset=UTF-8',
            origin: 'http://portus.puertos.es',
            :'X-GWT-Module-Base' => 'http://portus.puertos.es/Portus_RT/portusgwt/',
            :'X-GWT-Permutation' => '086F04890FE7FE08CA90ADFB1569851B',
            referer: 'http://portus.puertos.es/Portus_RT/?locale=es&height=640'
          }
        )
        @request.execute
      end

      private

      # Convert response response body into ruby objects
      #
      def parse_body

      end

    end
  end
end

# #
# curl 'http://portus.puertos.es/Portus_RT/portusgwt/rpc' \
#       -H 'Origin: http://portus.puertos.es' \
#       -H 'Content-Type: text/x-gwt-rpc; charset=UTF-8' \
#       -H 'X-GWT-Module-Base: http://portus.puertos.es/Portus_RT/portusgwt/' \
#       -H 'X-GWT-Permutation: 086F04890FE7FE08CA90ADFB1569851B' \
#       -H 'Referer: http://portus.puertos.es/Portus_RT/?locale=es&height=640' \
#       --data-binary '7|0|6|http://portus.puertos.es/Portus_RT/portusgwt/|71F7183B1AFBD1C68E9888D2C583629B|es.puertos.portus.main.client.service.PortusService|requestData|I|Z|1|2|3|4|4|5|5|5|6|1731|11|0|1|' \
#       --compressed
