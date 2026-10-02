# frozen_string_literal: true

module Scalar
  module Models
    # @see Scalar::Resources::Sdks#build
    class SdkBuildParams < Scalar::Internal::Type::BaseModel
      extend Scalar::Internal::Type::RequestParameters::Converter
      include Scalar::Internal::Type::RequestParameters

      # @!attribute uid
      #
      #   @return [String]
      required :uid, String

      # @!attribute languages
      #
      #   @return [Array<Symbol, Scalar::Models::SdkBuildParams::Language>, nil]
      optional :languages, -> { Scalar::Internal::Type::ArrayOf[enum: Scalar::SdkBuildParams::Language] }

      # @!attribute version
      #
      #   @return [String, nil]
      optional :version, String

      # @!method initialize(uid:, languages: nil, version: nil, request_options: {})
      #   @param uid [String]
      #   @param languages [Array<Symbol, Scalar::Models::SdkBuildParams::Language>]
      #   @param version [String]
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
