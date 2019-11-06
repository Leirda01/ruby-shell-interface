module Run
  def run *path, options
    begin
      load "#{path.join(File::SEPARATOR)}.rb"
      begin
        main options
      rescue ArgumentError
        main
      rescue NoMethodError
      end
    rescue LoadError
      "#{path[-2]}: #{path.last}: command not found."
    end
  end
end
