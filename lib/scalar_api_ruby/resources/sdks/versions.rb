# frozen_string_literal: true

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Versions
        # Create a version label from a version of the SDK's API document and start its
        # build. The label is the document version, and it becomes `latestVersion` when it
        # is the highest.
        #
        # @overload create(uid, version:, api_version: nil, request_options: {})
        #
        # @param uid [String]
        #
        # @param version [String]
        #
        # @param api_version [Object] Removed. A request that carries it is refused with a 400.
        #
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

        # Permanently delete one version label of an SDK and its builds. A label that is
        # the current build of any language promoting manually is refused with 409 and
        # nothing is deleted; promote or roll back to another build for that language
        # first. Each other language whose current build was of that label moves to the
        # active build of the highest remaining label that has one for the language, and
        # has no current build when none has; `currentVersion` shows the result. Each
        # language that moved to another build syncs it to its linked repository unless
        # the repository already holds it. When it was `latestVersion`, that tag moves to
        # the highest remaining label holding an active build. An SDK's last version
        # cannot be deleted.
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
          uid =
            parsed.delete(:uid) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
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
