class Memory < ActiveRecord::Base
  belongs_to :users
end


# def pretty_time
#     @memory.time.strftime("%B %d at %I:%M %p")
# end
