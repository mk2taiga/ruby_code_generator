require 'spec'

# ファイル生成に必要な要素を持つエンティティ
class FileSpec
  include Spec
  
  attr_reader :requires,
              :require_relatives,
              :classes

  def initialize
    @requires = []
    @require_relatives = []
    @classes = []
  end

  # @param[String]
  def add_require(require)
    @requires.push(require)
  end

  # @param[String]
  def add_require_relative(require_relative)
    @require_relatives.push(require_relative)
  end

  # @param[ClassSpec]
  def add_class(class_spec)
    @classes.push(class_spec)
  end

end