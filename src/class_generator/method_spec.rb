require_relative '../entity'

# メソッドに必要な要素を持つエンティティ
class MethodSpec
  include Entity

  attr_reader :method_name,
              :decorator,
              :generics,
              :parameters,
              :contents,
              :return_type


  def initialize
    @parameters = []
    @contents = []
  end

  # 引数は文字列で頼む
  def set_method_name(name)
    @method_name = name
  end

  # 引数は文字列で頼む
  def set_decorator(decorator)
    @decorator = decorator
  end

  # 引数は文字列で頼む
  # public <generics> void　メソッド名 みたいになる
  def set_generics(generics)
    @generics = generics
  end

  # parameter_specくれ
  def add_parameter(parameter)
    @parameters.push(parameter)
  end

  # 引数は文字列で頼む
  def add_content(content)
    @contents.push(content)
  end

  # 引数は文字列で頼む
  def set_return_type(type)
    @return_type = type
  end
end