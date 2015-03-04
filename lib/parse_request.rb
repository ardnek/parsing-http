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
    @first_pair = @param_array[0].split("=")
    @param_hash[@first_pair[0].to_sym] = @first_pair[1]
    @second_pair = @param_array[1].split("=")
    @param_hash[@second_pair[0].to_sym] = @second_pair[1]
    @param_hash
  end
end


testclass = Request.new
testclass.request = http_request
p testclass.query_params













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
