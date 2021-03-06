require_relative 'builder'
require_relative '../entity/parameter_component'

# ParameterSpec生成クラス
class ParameterBuilder
  include Builder

  def initialize
    @parameter_name = nil
    @decorator = Decorator::READ_ONLY
  end

  # @param[String]
  def set_parameter(name)
    @parameter_name = name
  end

  # @param[Decorator]
  def set_decorator(decorator)
    @decorator = decorator
  end

  # @return[ParameterComponent]
  def build
    raise 'parameter_nameをセットしてください' if @parameter_name == nil
    ParameterComponent.new(@parameter_name, @decorator)
  end

end