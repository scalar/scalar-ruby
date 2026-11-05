# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Repositories#update_publishing
      class RepositoryUpdatePublishingParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute language
        #
        #   @return [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Language]
        required :language, enum: -> { Scalar::Sdks::RepositoryUpdatePublishingParams::Language }

        # @!attribute publish_on_merge
        #
        #   @return [Boolean]
        required :publish_on_merge, Scalar::Internal::Type::Boolean, api_name: :publishOnMerge

        # @!attribute access
        #
        #   @return [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Access, nil]
        optional :access, enum: -> { Scalar::Sdks::RepositoryUpdatePublishingParams::Access }

        # @!attribute artifact_id
        #
        #   @return [String, nil]
        optional :artifact_id, String, api_name: :artifactId

        # @!attribute auth_method
        #
        #   @return [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::AuthMethod, nil]
        optional :auth_method,
                 enum: -> { Scalar::Sdks::RepositoryUpdatePublishingParams::AuthMethod },
                 api_name: :authMethod

        # @!attribute registry
        #
        #   @return [String, nil]
        optional :registry, String

        # @!attribute tag
        #
        #   @return [String, nil]
        optional :tag, String

        # @!attribute tap_repo
        #
        #   @return [String, nil]
        optional :tap_repo, String, api_name: :tapRepo

        # @!method initialize(uid:, language:, publish_on_merge:, access: nil, artifact_id: nil, auth_method: nil, registry: nil, tag: nil, tap_repo: nil, request_options: {})
        #   @param uid [String]
        #   @param language [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Language]
        #   @param publish_on_merge [Boolean]
        #   @param access [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::Access]
        #   @param artifact_id [String]
        #   @param auth_method [Symbol, Scalar::Models::Sdks::RepositoryUpdatePublishingParams::AuthMethod]
        #   @param registry [String]
        #   @param tag [String]
        #   @param tap_repo [String]
        #   @param request_options [Scalar::RequestOptions, Hash{Symbol=>Object}]

        module Language
          extend Scalar::Internal::Type::Enum

          TYPESCRIPT = :typescript
          PYTHON = :python
          CLI = :cli
          CSHARP = :csharp
          JAVA = :java
          RUBY = :ruby
          PHP = :php
          GO = :go
          RUST = :rust
          KOTLIN = :kotlin
          SWIFT = :swift
          CPP = :cpp
          DART = :dart

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Access
          extend Scalar::Internal::Type::Enum

          PUBLIC = :public
          RESTRICTED = :restricted

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module AuthMethod
          extend Scalar::Internal::Type::Enum

          OIDC = :oidc
          ACCESS_TOKEN = :"access-token"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
