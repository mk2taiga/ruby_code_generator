require_relative 'component'

# パラメーター生成に必要な要素を持つエンティティ
class ParameterSpec < Component

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

  def to_code
    puts 'ファイル生成処理を行う'
  end
end