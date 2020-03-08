require_relative 'component'

# ファイル生成に必要な要素を持つエンティティ
class ImportComponent < Component

  def initialize(type, path)
    @require_type = type
    @require_path = path
  end

  # @return[String]
  def to_code
    @require_type + ' ' + @require_path
  end

end