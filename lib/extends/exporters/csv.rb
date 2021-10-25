# frozen_string_literal: true

require "csv"

# Exports any serialized object (Hash) into a readable CSV. It transforms
# the columns using slashes in a way that can be afterwards reconstructed
# into the original nested hash.
#
# For example, `{ name: { ca: "Hola", en: "Hello" } }` would result into
# the columns: `name/ca` and `name/es`.
module CSVExporterExtend
  private

  def headers
    return [] if processed_collection.empty?

    processed_collection.inject([]) { |keys, resource| keys | resource.keys }
  end
end

Decidim::Exporters::CSV.class_eval do
  prepend(CSVExporterExtend)
end
