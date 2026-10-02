# frozen_string_literal: true

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Repositories
        # Link one language target to a GitHub repository, so builds sync there.
        #
        # @overload link(uid, base_branch:, language:, repository_id:, prerelease_type: nil, request_options: {})
        #
        # @param uid [String]
        # @param base_branch [String]
        # @param language [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Language]
        # @param repository_id [Integer]
        # @param prerelease_type [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Scalar::Models::Sdks::RepositoryLinkResponse]
        #
        # @see Scalar::Models::Sdks::RepositoryLinkParams
        def link(uid, params)
          parsed, options = Scalar::Sdks::RepositoryLinkParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/sdks/%1$s/repositories", uid],
            body: parsed,
            model: Scalar::Models::Sdks::RepositoryLinkResponse,
            options: options
          )
        end

        # Unlink one language target from its repository.
        #
        # @overload unlink(language, uid:, request_options: {})
        #
        # @param language [Symbol, Scalar::Models::Sdks::RepositoryUnlinkParams::Language]
        # @param uid [String]
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Sdks::RepositoryUnlinkParams
        def unlink(language, params)
          parsed, options = Scalar::Sdks::RepositoryUnlinkParams.dump_request(params)
          uid = parsed.delete(:uid) { raise ArgumentError.new("missing required path argument #{_1}") }
          @client.request(
            method: :delete,
            path: ["v1/sdks/%1$s/repositories/%2$s", uid, language],
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # Toggle publish-on-merge and the release settings for a linked target.
        #
        # @overload update_publishing(language, uid:, publish_on_merge:, access: nil, auth_method: nil, tag: nil, request_options: {})
        #
        # @param language [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Language] Path param
        #
        # @param uid [String] Path param
        #
        # @param publish_on_merge [Boolean] Body param
        #
        # @param access [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Access] Body param
        #
        # @param auth_method [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::AuthMethod] Body param
        #
        # @param tag [String] Body param
        #
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Sdks::RepositoryUpdatePublishingParams
        def update_publishing(language, params)
          parsed, options = Scalar::Sdks::RepositoryUpdatePublishingParams.dump_request(params)
          uid = parsed.delete(:uid) { raise ArgumentError.new("missing required path argument #{_1}") }
          @client.request(
            method: :post,
            path: ["v1/sdks/%1$s/repositories/%2$s/publishing", uid, language],
            body: parsed,
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
