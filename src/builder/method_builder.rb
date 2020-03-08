require_relative 'builder'
require_relative '../entity/method_component'

# MethodSpec生成クラス
class MethodBuilder
  include Builder

  def initialize
    @method_name = nil
    @decorator = nil
    @parameters = []
    @contents = []
  end

  # @param[String]
  def set_method_name(name)
    @method_name = name
  end

  # @param[Decorator]
  def set_decorator(decorator)
    @decorator = decorator
  end

  # @param[ParamSpec]
  def add_parameter(parameter)
    @parameters.push(parameter)
  end

  # @param[String]
  def add_content(content)
    @contents.push(content)
  end

  # @return[MethodComponent]
  def build
    MethodComponent.new(@method_name, @decorator, @parameters, @contents)
  end

end