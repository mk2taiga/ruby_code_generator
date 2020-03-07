# コード生成モジュール
module Builder

  # コードを生成します
  def build
    raise "#{self.class}##{__method__}が実装されていません"
  end

end