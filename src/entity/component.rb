# コード生成モジュール
class Spec
  include Entity

  # コードを生成します
  def to_code
    raise "#{self.class}##{__method__}が実装されていません"
  end

end