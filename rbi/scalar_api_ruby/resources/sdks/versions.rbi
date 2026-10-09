# typed: strong

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Versions
        # Create a new SDK version against a specific API version.
        sig do
          params(
            uid: String,
            api_version: String,
            version: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def create(uid, api_version:, version:, request_options: {})
        end

        # Permanently delete one version of an SDK.
        sig do
          params(
            version: String,
            uid: String,
            request_options: Scalar::RequestOptions::OrHash
          ).returns(T.anything)
        end
        def delete(version, uid:, request_options: {})
        end

        # @api private
        sig { params(client: Scalar::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
