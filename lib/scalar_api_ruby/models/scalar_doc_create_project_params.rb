# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::ScalarDocs#create_project
    class ScalarDocCreateProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute provider
      #
      #   @return [Symbol, Scalar::Models::ScalarDocCreateProjectParams::Provider]
      required :provider, enum: -> { Scalar::ScalarDocCreateProjectParams::Provider }

      # @!attribute bitbucket_repository
      #
      #   @return [Scalar::Models::ScalarDocCreateProjectParams::BitbucketRepository, nil]
      optional :bitbucket_repository,
               -> { Scalar::ScalarDocCreateProjectParams::BitbucketRepository },
               api_name: :bitbucketRepository

      # @!attribute blank
      #
      #   @return [Boolean, nil]
      optional :blank, Scalar::Internal::Type::Boolean

      # @!attribute github_repository
      #
      #   @return [Scalar::Models::ScalarDocCreateProjectParams::GithubRepository, nil]
      optional :github_repository,
               -> { Scalar::ScalarDocCreateProjectParams::GithubRepository },
               api_name: :githubRepository

      # @!attribute is_private
      #
      #   @return [Boolean, nil]
      optional :is_private, Scalar::Internal::Type::Boolean, api_name: :isPrivate

      # @!attribute slug
      #
      #   @return [String, nil]
      optional :slug, String

      # @!method initialize(name:, provider:, bitbucket_repository: nil, blank: nil, github_repository: nil, is_private: nil, slug: nil, request_options: {})
      #   @param name [String]
      #   @param provider [Symbol, Scalar::Models::ScalarDocCreateProjectParams::Provider]
      #   @param bitbucket_repository [Scalar::Models::ScalarDocCreateProjectParams::BitbucketRepository]
      #   @param blank [Boolean]
      #   @param github_repository [Scalar::Models::ScalarDocCreateProjectParams::GithubRepository]
      #   @param is_private [Boolean]
      #   @param slug [String]
      #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]

      module Provider
        extend Scalar::Internal::Type::Enum

        FORGEJO = :forgejo
        GITHUB = :github
        BITBUCKET = :bitbucket

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class BitbucketRepository < Scalar::Internal::Type::BaseModel
        # @!attribute repo_uuid
        #
        #   @return [String]
        required :repo_uuid, String, api_name: :repoUuid

        # @!attribute workspace_uuid
        #
        #   @return [String]
        required :workspace_uuid, String, api_name: :workspaceUuid

        # @!method initialize(repo_uuid:, workspace_uuid:)
        #   @param repo_uuid [String]
        #   @param workspace_uuid [String]
      end

      class GithubRepository < Scalar::Internal::Type::BaseModel
        # @!attribute installation_id
        #
        #   @return [Integer]
        required :installation_id, Integer, api_name: :installationId

        # @!attribute repo_id
        #
        #   @return [Integer]
        required :repo_id, Integer, api_name: :repoId

        # @!method initialize(installation_id:, repo_id:)
        #   @param installation_id [Integer]
        #   @param repo_id [Integer]
      end
    end
  end
end
