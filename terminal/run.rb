module Run
  def run command, options
    Thread.new do
      begin
        load File.join @shell, "#{command}.rb"
        main options
      rescue ArgumentError
        main
      rescue NoMethodError
      rescue LoadError
        puts "#{@shell}: #{command}: command not found."
      end
    end
  end
end
