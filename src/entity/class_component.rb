require_relative 'component'

# クラスに必要な要素をもつエンティティ
class ClassComponent < Component

  def initialize(imports, modules, class_name, extend_class, include_modules, inner_classes, parameters, methods)
    @imports = imports
    @modules = modules
    @class_name = class_name
    @extend_class = extend_class
    @include_modules = include_modules
    @inner_classes = inner_classes
    @parameters = parameters
    @methods = methods
  end

  #@return[String]
  def to_code
    puts 'ファイル生成処理を行う'
  end

end