require 'yaml'

module YRM
  class Storage
    def initialize(path)
      @path = path
      load!
    end

    def save!
      yml = @storage.to_yaml
      File.open(@path, "w") do |f|
        f.write(yml)
      end
    rescue Errno::EACCES
      puts "Have no permitions to write into file #{@path}"
    end

    def empty!
      @storage = {}
    end

    def to_h
      @storage.to_h
    end

    private
    def load!
      @storage = YAML.load_file(@path)
    rescue Errno::ENOENT
      puts "File #{@path} doesn't exists. Creating empty file"
    end
  end
end
