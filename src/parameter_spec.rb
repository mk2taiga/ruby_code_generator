require_relative 'spec'
require_relative 'builder'

# パラメーター生成に必要な要素を持つエンティティ
class ParameterSpec
  include Spec, Builder

  attr_reader :parameter_name,
              :decorator

  # @param[String]
  def set_parameter(name)
    @parameter_name = name
  end

  # @param[Decorator]
  def set_decorator(decorator)
    @decorator = decorator
  end

  def build
    puts 'ファイル生成処理を行う'
  end
end