require_relative 'builder'
require_relative '../entity/class_component'

# ClassSpec生成Builder
class ClassBuilder
  include Builder

  def initialize
    @imports = []
    @modules = []
    @class_name = nil
    @extend_class = nil
    @include_modules = []
    @inner_classes = []
    @parameters = []
    @methods = []
  end

  # @param[ImportComponent]
  def add_import(import)
    @imports.push(import)
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
  def add_extends_class_name(class_name)
    @extend_class = class_name
  end

  # @param[String]
  def add_include_module_name(module_name)
    @include_modules.push(module_name)
  end

  # @param[ClassSpec]
  def add_inner_class(class_spec)
    @inner_classes.push(class_spec)
  end

  # @param[ParameterComponent]
  def add_parameter(parameter)
    @parameters.push(parameter)
  end

  # @param[MethodComponent]
  def add_method(method)
    @methods.push(method)
  end

  # @return[ClassComponent]
  def build
    raise 'class_nameをセットしてください' if @class_name == nil
    ClassComponent.new(@imports, @modules, @class_name, @extend_class, @include_modules, @inner_classes, @parameters, @methods)
  end

end