require_relative '../entity'

# クラスに必要な要素をもつエンティティ
class ClassSpec
  include Entity

  attr_reader :packages,
              :decorator,
              :class_name,
              :type,
              :extend_class,
              :implement_classes,
              :methods,
              :inner_classes


  def initialize
    @packages = []
    @extend_class = []
    @implement_classes = []
    @methods = []
    @inner_classes = []
  end

  def set_package(package)
    @packages.push(package)
  end

  def add_decorator(decorator)
    @decorator = decorator
  end

  def set_class_name(class_name)
    @class_name = class_name
  end

  # 引数は文字列で頼む
  def set_generics(type)
    type = type
  end

  # 引数は文字列で頼む
  def set_extend_class(class_name)
    @extend_class = class_name
  end

  # 引数は文字列で頼む
  def add_implement_class(class_name)
    @implement_classes.push(class_name)
  end

  def add_method(method)
    @methods.push(method)
  end

  def add_inner_class(class_spec)
    @inner_classes.push(class_spec)
  end
end