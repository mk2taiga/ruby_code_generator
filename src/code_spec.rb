require_relative 'builder'

# ファイル生成に必要な要素を持つエンティティ
class CodeSpec
  include Builder
  
  attr_reader :requires,
              :require_relatives,
              :class

  def initialize
    @requires = []
    @require_relatives = []
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
  def set_class(class_spec)
    @class = class_spec
  end

  def build
    puts 'ファイル生成処理を行う'
  end

end