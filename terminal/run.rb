module Run
  def run command, options
    Thread.new do
      begin
        load File.join @shell, "#{command}.rb"
        @stderr = main options
      rescue ArgumentError
        @stderr = main
      rescue NoMethodError
      rescue LoadError
        @stderr = 0; puts "#{@shell}: #{command}: command not found."
      rescue
        puts $!
      end
    end
  end
end
