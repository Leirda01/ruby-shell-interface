module Run
  def run *path, options
    Thread.new do
      begin
        load "#{path.join(File::SEPARATOR)}.rb"
        @stderr = main options
      rescue ArgumentError
        @stderr = main
      rescue NoMethodError
      rescue LoadError
        @stderr = 0; puts "#{path[-2]}: #{path.last}: command not found."
      end
    end
  end
end
