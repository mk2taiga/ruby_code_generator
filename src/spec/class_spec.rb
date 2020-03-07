require_relative 'spec'

# クラスに必要な要素をもつエンティティ
class ClassSpec
  include Spec

  attr_reader :modules,
              :class_name,
              :extend_class,
              :include_modules,
              :parameters,
              :methods


  def initialize
    @modules = []
    @include_modules = []
    @parameters = []
    @methods = []
  end

  # @param[String]
  def add_module(module_name)
    @modules.push(module_name)
  end

  # @param[String]
  def set_class_name(name)
    @class_name = name
  end

  # @param[String]
  def add_extends__class(class_name)
    @extend_class.push(class_name)
  end

  # @param[String]
  def add_include_module(module_name)
    @include_modules.push(module_name)
  end

  # @param[ParameterSpec]
  def add_parameter(parameter)
    @parameters.push(parameter)
  end

  # @param[MethodSpec]
  def add_method(method)
    @methods.push(method)
  end
  
end