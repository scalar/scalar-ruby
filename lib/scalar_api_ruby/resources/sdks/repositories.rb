# frozen_string_literal: true

module Scalar
  module Resources
    class Sdks
      # SDKs
      class Repositories
        # Some parameter documentations has been truncated, see
        # {Scalar::Models::Sdks::RepositoryLinkParams} for more details.
        #
        # Link an existing language target to a GitHub repository accessible through the
        # Scalar GitHub App. Requires team edit permission and a paid SDK automation plan.
        # Native delivery writes at the repository root; use a separate repository for
        # each target. Directory fields are unsupported. Linking can immediately sync the
        # current build under automatic promotion; pass promotion: manual to hold it back.
        # If GitHub access is missing, connect GitHub and grant the App access in Scalar
        # Dashboard before retrying.
        #
        # @overload link(uid, base_branch:, language:, repository_id:, prerelease_type: nil, promotion: nil, request_options: {})
        #
        # @param uid [String]
        #
        # @param base_branch [String] Release promote branch. Platform-managed branches such as scalar-next and scalar
        #
        # @param language [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Language]
        #
        # @param repository_id [Integer]
        #
        # @param prerelease_type [String]
        #
        # @param promotion [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Promotion] Controls when a build becomes current and syncs to GitHub. Omit to preserve the
        #
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
          uid =
            parsed.delete(:uid) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["v1/sdks/%1$s/repositories/%2$s", uid, language],
            model: Scalar::Internal::Type::Unknown,
            options: options
          )
        end

        # Toggle publish-on-merge and the release settings for a linked target.
        #
        # @overload update_publishing(language, uid:, publish_on_merge:, access: nil, artifact_id: nil, auth_method: nil, cask: nil, registry: nil, replace_formula: nil, tag: nil, tap_repo: nil, request_options: {})
        #
        # @param language [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Language] Path param
        #
        # @param uid [String] Path param
        #
        # @param publish_on_merge [Boolean] Body param
        #
        # @param access [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Access] Body param
        #
        # @param artifact_id [String] Body param
        #
        # @param auth_method [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::AuthMethod] Body param
        #
        # @param cask [Boolean] Body param
        #
        # @param registry [String] Body param
        #
        # @param replace_formula [Boolean] Body param
        #
        # @param tag [String] Body param
        #
        # @param tap_repo [String] Body param
        #
        # @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Object]
        #
        # @see Scalar::Models::Sdks::RepositoryUpdatePublishingParams
        def update_publishing(language, params)
          parsed, options = Scalar::Sdks::RepositoryUpdatePublishingParams.dump_request(params)
          uid =
            parsed.delete(:uid) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
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
