# https://github.com/refile/refile/blob/49efe827717bca12f31c5f3a4f6973509a46508e/lib/refile/file_double.rb

module Refile
  class FileDouble
    attr_reader :original_filename, :content_type
    def initialize(data, name = nil, content_type: nil)
      @io = StringIO.new(data)
      @original_filename = name
      @content_type = content_type
    end

    extend Forwardable
    def_delegators :@io, :read, :rewind, :size, :eof?, :close
  end
end
