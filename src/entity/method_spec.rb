require_relative 'spec'

# メソッドに必要な要素を持つエンティティ
class MethodSpec < Spec

  attr_reader :method_name,
              :decorator,
              :parameters,
              :contents

  def initialize
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

  def to_code
    puts 'ファイル生成処理を行う'
  end
end