# コンポーネント生成クラスモジュール
module Builder

  # componentを生成します
  # @return[Component]
  def build
    raise "#{self.class}##{__method__}が実装されていません"
  end
end