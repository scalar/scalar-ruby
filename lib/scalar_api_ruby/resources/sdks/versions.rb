# frozen_string_literal: true

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Versions
        # Create a new SDK version against a specific API version.
        #
        # @overload create(uid, api_version:, version:, request_options: {})
        #
        # @param uid [String]
        # @param api_version [String]
        # @param version [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Sdks::VersionCreateParams
        def create(uid, params)
          parsed, options = Scalar::Sdks::VersionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/sdks/%1$s/versions", uid],
            body: parsed,
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # Permanently delete one version of an SDK.
        #
        # @overload delete(version, uid:, request_options: {})
        #
        # @param version [String]
        # @param uid [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Sdks::VersionDeleteParams
        def delete(version, params)
          parsed, options = Scalar::Sdks::VersionDeleteParams.dump_request(params)
          uid = parsed.delete(:uid) { raise ArgumentError.new("missing required path argument #{_1}") }
          @client.request(
            method: :delete,
            path: ["v1/sdks/%1$s/versions/%2$s", uid, version],
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # @api private
        #
        # @param client [Scalar::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
