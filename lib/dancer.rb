require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'

class Dancer
    include FancyDance::InstanceMethods # _INCLUDE_ allows us to access the FancyDance module to use its InstanceMethods module _INSTANCE_
    extend FancyDance::ClassMethods # _EXTEND_ allows us to use the FancyDance module to use its ClassMethods module _CLASS_

    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

end