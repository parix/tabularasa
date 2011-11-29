require 'csv'

class Tabularasa
  def initialize(rows, options = {}, &block)
    @rows = rows
    @keys = (options[:only] || get_keys) - (options[:exclude] || [])
    @headers = options[:headers] || options[:only] || get_headers
  end

  def to_csv
    csv_data = CSV.generate do |csv|
      csv << @headers
      @rows.each do |row|
        csv << collect(row)
      end
    end
    csv_data
  end

  private
    def data_type(object = @rows.first)
      return 'active_record' if object.is_a?(ActiveRecord::Base)
      return 'hash' if object.is_a?(Hash)
      return 'array' if object.is_a?(Array) && !object.first.is_a?(Array)
      return 'unsupported'
    end


    def collect(object)
      send "collect_#{data_type}", (object)
    end

    def collect_active_record(object)
      @keys.collect{|key| object[key]}
    end

    def collect_hash(object)
      @keys.collect{|key| object[key]}
    end

    def collect_array(object)
      @keys.collect{|key| object[key]}
    end

    def collect_unsupported(object)
      []
    end


    def get_keys
      send "get_#{data_type}_keys"
    end

    def get_active_record_keys
      @rows.first.attributes.keys
    end

    def get_hash_keys
      @rows.first.keys
    end

    def get_array_keys
      (0...@rows.first.size).collect{|n| n}
    end

    def get_unsupported_keys
      []
    end


    def get_headers
      send "get_#{data_type}_headers"
    end

    def get_active_record_headers
      @rows.first.attributes.keys
    end

    def get_hash_headers
      @rows.first.stringify_keys.keys
    end

    def get_array_headers
      (0...@rows.first.size).collect{|n| n.to_s}
    end

    def get_unsupported_headers
      []
    end
end

class Array
 def to_csv(options = {}, &block)
   tabularasa = Tabularasa.new(self, options, &block)
   tabularasa.to_csv
 end
end
