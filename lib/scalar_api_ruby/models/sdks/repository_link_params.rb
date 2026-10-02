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

        # @!method initialize(uid:, base_branch:, language:, repository_id:, prerelease_type: nil, request_options: {})
        #   @param uid [String]
        #   @param base_branch [String]
        #   @param language [Symbol, Scalar::Models::Sdks::RepositoryLinkParams::Language]
        #   @param repository_id [Integer]
        #   @param prerelease_type [String]
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
      end
    end
  end
end
