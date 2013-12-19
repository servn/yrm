module YRM
  class Storage
    def initialize(path)
      @path = path
      load!
    end

    def save!
      # yml = @storage.to_yaml
      # File.open do
      #   write yml to file
      # end
    end

    def empty!
      @storage = {}
    end

    private
    def load!
      # @storage = YAML.load(...)
    end
  end
end

yml = YRM::Storage.new("/var/db/orm.yml")
yml.to_h
yml.save!
yml.empty!

