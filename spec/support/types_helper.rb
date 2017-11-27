module GraphQL
  module TypesHelpers
    EXCLUDE = %w[created_at updated_at].freeze
    def has_fields_for_attributes_of(model, exclude = [])
      excluded = exclude.concat(EXCLUDE)
      model.columns.reject { |c| excluded.include?(c.name) }.each do |column|
        expect(described_class).to have_field(column.name.to_sym)
      end
    end

    def has_fields_for_associations_of(model, exclude = [])
      model.reflect_on_all_associations
           .reject { |a| exclude.include?(a.name) }
           .each do |association|
        expect(described_class).to have_field(association.name.to_sym)
      end
    end
  end
end
