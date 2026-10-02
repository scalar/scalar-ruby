# frozen_string_literal: true

module Scalar
  module Models
    module Sdks
      # @see Scalar::Resources::Sdks::Repositories#unlink
      class RepositoryUnlinkParams < Scalar::Internal::Type::BaseModel
        extend Scalar::Internal::Type::RequestParameters::Converter
        include Scalar::Internal::Type::RequestParameters

        # @!attribute uid
        #
        #   @return [String]
        required :uid, String

        # @!attribute language
        #
        #   @return [Symbol, Scalar::Models::Sdks::RepositoryUnlinkParams::Language]
        required :language, enum: -> { Scalar::Sdks::RepositoryUnlinkParams::Language }

        # @!method initialize(uid:, language:, request_options: {})
        #   @param uid [String]
        #   @param language [Symbol, Scalar::Models::Sdks::RepositoryUnlinkParams::Language]
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
