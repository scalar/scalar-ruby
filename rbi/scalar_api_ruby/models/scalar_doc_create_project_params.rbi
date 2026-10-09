# typed: strong

module Scalar
  module Models
    class ScalarDocCreateProjectParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Scalar::ScalarDocCreateProjectParams, Scalar::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Scalar::ScalarDocCreateProjectParams::Provider::OrSymbol) }
      attr_accessor :provider

      sig do
        returns(
          T.nilable(Scalar::ScalarDocCreateProjectParams::BitbucketRepository)
        )
      end
      attr_reader :bitbucket_repository

      sig do
        params(
          bitbucket_repository:
            Scalar::ScalarDocCreateProjectParams::BitbucketRepository::OrHash
        ).void
      end
      attr_writer :bitbucket_repository

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :blank

      sig { params(blank: T::Boolean).void }
      attr_writer :blank

      sig do
        returns(
          T.nilable(Scalar::ScalarDocCreateProjectParams::GithubRepository)
        )
      end
      attr_reader :github_repository

      sig do
        params(
          github_repository:
            Scalar::ScalarDocCreateProjectParams::GithubRepository::OrHash
        ).void
      end
      attr_writer :github_repository

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :is_private

      sig { params(is_private: T::Boolean).void }
      attr_writer :is_private

      sig { returns(T.nilable(String)) }
      attr_reader :slug

      sig { params(slug: String).void }
      attr_writer :slug

      sig do
        params(
          name: String,
          provider: Scalar::ScalarDocCreateProjectParams::Provider::OrSymbol,
          bitbucket_repository:
            Scalar::ScalarDocCreateProjectParams::BitbucketRepository::OrHash,
          blank: T::Boolean,
          github_repository:
            Scalar::ScalarDocCreateProjectParams::GithubRepository::OrHash,
          is_private: T::Boolean,
          slug: String,
          request_options: Scalar::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        provider:,
        bitbucket_repository: nil,
        blank: nil,
        github_repository: nil,
        is_private: nil,
        slug: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            provider: Scalar::ScalarDocCreateProjectParams::Provider::OrSymbol,
            bitbucket_repository:
              Scalar::ScalarDocCreateProjectParams::BitbucketRepository,
            blank: T::Boolean,
            github_repository:
              Scalar::ScalarDocCreateProjectParams::GithubRepository,
            is_private: T::Boolean,
            slug: String,
            request_options: Scalar::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Provider
        extend Scalar::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Scalar::ScalarDocCreateProjectParams::Provider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FORGEJO =
          T.let(
            :forgejo,
            Scalar::ScalarDocCreateProjectParams::Provider::TaggedSymbol
          )
        GITHUB =
          T.let(
            :github,
            Scalar::ScalarDocCreateProjectParams::Provider::TaggedSymbol
          )
        BITBUCKET =
          T.let(
            :bitbucket,
            Scalar::ScalarDocCreateProjectParams::Provider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Scalar::ScalarDocCreateProjectParams::Provider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class BitbucketRepository < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::ScalarDocCreateProjectParams::BitbucketRepository,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :repo_uuid

        sig { returns(String) }
        attr_accessor :workspace_uuid

        sig do
          params(repo_uuid: String, workspace_uuid: String).returns(
            T.attached_class
          )
        end
        def self.new(repo_uuid:, workspace_uuid:)
        end

        sig { override.returns({ repo_uuid: String, workspace_uuid: String }) }
        def to_hash
        end
      end

      class GithubRepository < Scalar::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Scalar::ScalarDocCreateProjectParams::GithubRepository,
              Scalar::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :installation_id

        sig { returns(Integer) }
        attr_accessor :repo_id

        sig do
          params(installation_id: Integer, repo_id: Integer).returns(
            T.attached_class
          )
        end
        def self.new(installation_id:, repo_id:)
        end

        sig { override.returns({ installation_id: Integer, repo_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
