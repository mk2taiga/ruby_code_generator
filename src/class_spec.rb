require_relative 'spec'

# クラスに必要な要素をもつエンティティ
class ClassSpec < Spec

  attr_reader :imports,
              :modules,
              :class_name,
              :extend_class,
              :include_modules,
              :inner_classes,
              :parameters,
              :methods


  def initialize
    @imports = []
    @modules = []
    @include_modules = []
    @inner_classes = []
    @parameters = []
    @methods = []
  end

  # @param[ImportSpec]
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
  def add_extends__class(class_name)
    @extend_class.push(class_name)
  end

  # @param[String]
  def add_include_module(module_name)
    @include_modules.push(module_name)
  end

  # @param[ClassSpec]
  def add_inner_class(class_spec)
    @inner_classes.push(class_spec)
  end

  # @param[ParameterSpec]
  def add_parameter(parameter)
    @parameters.push(parameter)
  end

  # @param[MethodSpec]
  def add_method(method)
    @methods.push(method)
  end

  def build
    puts 'ファイル生成処理を行う'
  end
  
end