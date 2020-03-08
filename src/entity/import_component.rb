require_relative 'component'

# ファイル生成に必要な要素を持つエンティティ
class ImportComponent < Component

  def initialize(type, path)
    @require_type = type
    @require_path = path
  end

  def to_code
    puts 'ファイル生成処理を行う'
  end

end