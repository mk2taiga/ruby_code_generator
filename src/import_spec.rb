require_relative 'spec'

# ファイル生成に必要な要素を持つエンティティ
class ImportSpec < Spec
  
  attr_reader :requires,
              :require_relatives

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

  def to_code
    puts 'ファイル生成処理を行う'
  end

end