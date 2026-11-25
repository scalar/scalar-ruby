# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Repositories#link
      class RepositoryLinkParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute base_branch
        #   Release promote branch. Platform-managed branches such as scalar-next and
        #   scalar-generated are reserved.
        #
        #   @return [String]
        required :base_branch, String, api_name: :baseBranch

        # @!attribute language
        #
        #   @return [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Language]
        required :language, enum: -> { Scalar::Sdks::RepositoryLinkParams::Language }

        # @!attribute repository_id
        #
        #   @return [Integer]
        required :repository_id, Integer, api_name: :repositoryId

        # @!attribute prerelease_type
        #
        #   @return [String, nil]
        optional :prerelease_type, String, api_name: :prereleaseType

        # @!attribute promotion
        #   Controls when a build becomes current and syncs to GitHub. Omit to preserve the
        #   saved policy.
        #
        #   @return [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Promotion, nil]
        optional :promotion, enum: -> { Scalar::Sdks::RepositoryLinkParams::Promotion }

        # @!method initialize(uid:, base_branch:, language:, repository_id:, prerelease_type: nil, promotion: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Scalar::Models::Sdks::RepositoryLinkParams} for more details.
        #
        #   @param uid [String]
        #
        #   @param base_branch [String] Release promote branch. Platform-managed branches such as scalar-next and scalar
        #
        #   @param language [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Language]
        #
        #   @param repository_id [Integer]
        #
        #   @param prerelease_type [String]
        #
        #   @param promotion [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Promotion] Controls when a build becomes current and syncs to GitHub. Omit to preserve the
        #
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

        # Controls when a build becomes current and syncs to GitHub. Omit to preserve the
        # saved policy.
        module Promotion
          extend Scalar::Internal::Type::Enum

          AUTOMATIC = :automatic
          MANUAL = :manual

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
