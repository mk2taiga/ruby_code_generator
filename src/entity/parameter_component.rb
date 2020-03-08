require_relative 'component'

# パラメーター生成に必要な要素を持つエンティティ
class ParameterComponent < Component

  def initialize(parameter_name, decorator)
    @parameter_name = parameter_name
    @decorator = decorator
  end

  def get_decorator
    @decorator
  end

  # @return[String]
  def to_code
    @parameter_name
  end
end