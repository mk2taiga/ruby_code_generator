require_relative '../entity'

# パラメーター生成に必要な要素を持つエンティティ
class ParameterSpec
  include Entity

  attr_reader :parameter_name,
              :decorator,
              :type

  # 引数は文字列で頼む
  def set_parameter(name)
    @parameter_name = name
  end

  # 引数は文字列で頼む
  def set_decorator(decorator)
    @decorator = decorator
  end

  # 引数は文字列で頼む
  def set_type(type)
    @type = type
  end
end