# write your code here
http_request = File.read('../data/get_request.txt').split("\n")

#blueprint
class Request
  attr_accessor :request

  def http_verb
    @request[0].split(" ")[0]
  end

  def version
    @request[0].split(" ")[2]
  end

  def path
    @request[0].split(" ")[1].split("?")[0]
  end

  def query_params
    @param_hash = {}
    @param_array = @request[0].split(" ")[1].split("?")[1].split("&")
    @param_hash[@param_array[0].split("=")[0].to_sym] = @param_array[0].split("=")[1]
    @param_hash[@param_array[1].split("=")[0].to_sym] = @param_array[1].split("=")[1]
    @param_hash[@param_array[2].split("=")[0].to_sym] = @param_array[2].split("=")[1]
  end

  def query_string
    @param_array = @request[0].split(" ")[1].split("?")[1].split("&")
  end

  def body
    @body_hash = {}
    @body_hash[@request[1].split(" ")[0].chop.to_sym] = @request[1].split(" ")[1]
    @body_hash[@request[2].split(" ")[0].chop.to_sym] = @request[2].split(" ")[1]
    @body_hash[@request[3].split(" ")[0].chop.to_sym] = @request[3].split(" ")[1]
    @body_hash
  end

  def params
    self.query_params.merge(self.body)
  end

end


testclass = Request.new
testclass.request = http_request
p testclass.body













# string = "Stephen Kendra Turek Prill"
#
# kendraclass = Request.new
# kendraclass.request = string.split(" ")
# puts kendraclass.http_verb


# attr_accessor
# def yo
#   @yo
# end
#
# def yo=(something)
#   @yo=something
# end
