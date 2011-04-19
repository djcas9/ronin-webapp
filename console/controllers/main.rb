require 'stringio'

ConsoleApp.controllers do

  get :index do
    render 'console/index'
  end

  post :eval do
    return_value = nil
    exception = nil

    $stdout = stdout = StringIO.new
    $stderr = stderr = StringIO.new

    begin
      return_value = eval(params[:code])
    rescue Exception => e
      exception = e
    end

    $stdout = STDOUT
    $stderr = STDERR

    response = {:stdout => stdout.string, :stderr => stderr.string}

    if exception
      response[:exception] = {
        :class => exception.class,
        :message => exception.message,
        :backtrace => exception.backtrace
      }
    else
      response[:object] = {
        :class => return_value.class,
        :object_id => return_value.object_id,
        :value => return_value,
        :inspect => return_value.inspect
      }
    end

    response.to_json
  end

  post :auto_complete, :with => :code do
  end

end
