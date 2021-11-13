

module GeneratingData


    def self.with_active_record_create(size)
        (1..size).each do |i|
            record = generate_record
            record.save!
        end 
    end

    def self.with_active_record_import(size)
        records = []
        (1..size).each do |i|
            records << generate_record
        end
        DummyModel.import(records)
    end

    def self.with_active_record_import_without_validations(size)
        records = []
        (1..size).each do |i|
            records << generate_record
        end
        DummyModel.import(records, validate: false)
    end
     
    def self.with_active_record_import_columns_without_validations(size)
        values = []
        columns = ['dummy_text1', 'dummy_text2', 'dummy_text3']
        (1..size).each do |i|
            values << [Faker::Lorem.word,Faker::Lorem.word,Faker::Lorem.word]
        end
        DummyModel.import(columns, values, validate: false)
    end

    def self.generate_record
        DummyModel.new(dummy_text1: Faker::Lorem.word, dummy_text2: Faker::Lorem.word, dummy_text3: Faker::Lorem.word)
    end

    def self.clean
        DummyModel.delete_all
    end
end