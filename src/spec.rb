# コード生成モジュール
class Spec
  include Entity

  # コードを生成します
  def build
    raise "#{self.class}##{__method__}が実装されていません"
  end

end