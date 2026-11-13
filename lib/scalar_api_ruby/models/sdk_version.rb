# frozen_string_literal: true

module Scalar
  module Models
    class SdkVersion < Scalar::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Integer]
      required :created_at, Integer, api_name: :createdAt

      # @!attribute languages
      #
      #   @return [Array<Symbol, Scalar::Models::SdkVersion::Language>]
      required :languages, -> { Scalar::Internal::Type::ArrayOf[enum: Scalar::SdkVersion::Language] }

      # @!attribute version
      #
      #   @return [String]
      required :version, String

      # @!method initialize(created_at:, languages:, version:)
      #   @param created_at [Integer]
      #   @param languages [Array<Symbol, Scalar::Models::SdkVersion::Language>]
      #   @param version [String]

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
