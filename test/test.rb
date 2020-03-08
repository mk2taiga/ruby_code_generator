require_relative '../src/builder/import_builder'
require_relative '../src/builder/class_builder'
require_relative '../src/builder/method_builder'
require_relative '../src/builder/parameter_builder'
require_relative '../src/entity/decorator'
require_relative '../src/code_writer'

import_builder = ImportBuilder.new
method_builder = MethodBuilder.new
parameter_builder = ParameterBuilder.new
class_builder = ClassBuilder.new

imports = []
import_builder.set_require(Decorator::REQUIRE_RELATIVE)
import_builder.set_require_path("./src/builder/method_builder")
class_builder.add_import(import_builder.build)

import_builder.set_require_path("./src/builder/parameter_builder")
class_builder.add_import(import_builder.build)

method_builder.set_method_name("output_test")
parameter_builder.set_parameter("input")
method_builder.add_parameter(parameter_builder.build)
parameter_builder.set_parameter("output")
method_builder.add_parameter(parameter_builder.build)
method_builder.add_content("puts input + ':' + output")

parameter_builder.set_decorator(Decorator::READ_ONLY)
parameter_builder.set_parameter("hoge_param")
class_builder.add_parameter(parameter_builder.build)

class_builder.add_extends_class_name("Fuga")
class_builder.add_method(method_builder.build)

class_builder.set_class_name('Hoge')

writer = CodeWriter.new
writer.write(class_builder.build, './src/hoge/fuga')