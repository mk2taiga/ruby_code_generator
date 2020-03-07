require_relative '../entity'

# クラスに必要な要素をもつエンティティ
class ClassSpec
  include Entity

  attr_reader :packages,
              :decorator,
              :class_name,
              :generics,
              :extend_class,
              :implement_classes,
              :parameters,
              :methods,
              :inner_classes


  def initialize
    @packages = []
    @extend_class = []
    @implement_classes = []
    @parameters = []
    @methods = []
    @inner_classes = []
  end

  # 引数は文字列で頼む
  def add_package(package)
    @packages.push(package)
  end

  # 引数は文字列で頼む
  def set_decorator(decorator)
    @decorator = decorator
  end

  # 引数は文字列で頼む
  def set_class_name(class_name)
    @class_name = class_name
  end

  # 引数は文字列で頼む
  # クラス名<generics>になる
  def set_generics(generics)
    @generics = generics
  end

  # 引数は文字列で頼む
  def set_extend_class(class_name)
    @extend_class = class_name
  end

  # 引数は文字列で頼む
  def add_implement_class(class_name)
    @implement_classes.push(class_name)
  end

  # parameter_specくれ
  def add_parameter(parameter)
    @parameters.push(parameter)
  end

  # method_specくれ
  def add_method(method)
    @methods.push(method)
  end

  # class_specくれ
  def add_inner_class(class_spec)
    @inner_classes.push(class_spec)
  end
end