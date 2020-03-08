require_relative 'component'

# クラスに必要な要素をもつエンティティ
class ClassComponent < Component
  include Entity

  def initialize(imports, modules, class_name, extend_class, include_modules, inner_classes, parameters, methods)
    @imports = imports
    @module_names = modules
    @class_name = class_name
    @extend_class_name = extend_class
    @include_module_names = include_modules
    @inner_classes = inner_classes
    @parameters = parameters
    @methods = methods
  end

  #@return[String]
  def to_code
    class_define = [
        create_import,
        '',
        create_class_define,
        '',
        create_class_parameter,
        ''
    ]

    @inner_classes.each do |inner_class|
      class_define.push(inner_class.to_code)
      class_define.push('')
    end

    @methods.each do |method|
      class_define.push(method.to_code)
      class_define.push('')
    end

    class_define.push('end')
    class_define.push('end') unless @module_names.empty?
    
    class_define.join("\n")
  end

  private

  def create_import
    import_list = []
    require_list = []
    require_relative_list = []

    @imports.each do |import|
      if import.get_require_type == Decorator::REQUIRE
        require_list.push(import.to_code)
      elsif import.get_require_type == Decorator::REQUIRE_RELATIVE
        require_relative_list.push(import.to_code)
      end
    end

    import_list.push(require_list.join("\n"))
    import_list.push(require_relative_list.join("\n"))
    import_list.join("\n")
  end

  def create_class_define
    define = []

    @module_names.each do |module_name|
      define.push('module ' + module_name)
    end

    class_name = 'class ' + @class_name
    class_name << ' < ' + @extend_class_name if @extend_class_name != nil
    define.push(class_name)

    @include_module_names.each do |module_name|
      define.push('include ' + module_name)
    end

    define.join("\n")
  end

  def create_class_parameter
    param_list = []
    read_only = []
    write_only = []
    read_and_write = []
    read_define = Decorator::READ_ONLY + ' '
    write_define = Decorator::WRITE_ONLY + ' '
    read_and_write_define = Decorator::READ_AND_WRITE + ' '

    @parameters.each_with_index do |parameter|
      if parameter.get_decorator == Decorator::READ_ONLY
        read_only.push(parameter)
      elsif parameter.get_decorator == Decorator::WRITE_ONLY
        write_only.push(parameter)
      elsif parameter.get_decorator == Decorator::READ_AND_WRITE
        read_and_write.push(parameter)
      end
    end

    unless read_only.empty?
      read_only.each_with_index do |param, index|
        if index == 0
          read_define << ':' + param.to_code
          next
        end
        read_define << ', :' + param.to_code
      end

      param_list.push(read_define)
    end

    unless write_only.empty?
      write_only.each_with_index do |param, index|
        if index == 0
          write_define << ':' + param.to_code
          next
        end
        write_define << ', :' + param.to_code
      end

      param_list.push(write_define)
    end

    unless read_and_write.empty?
      read_and_write.each_with_index do |param, index|
        if index == 0
          read_and_write_define << ':' + param.to_code
          next
        end
        read_and_write_define << ', :' + param.to_code
      end

      param_list.push(read_and_write_define)
    end

    param_list.join("\n")
  end
end