# コマンドモジュール
module Command
  # コマンド名を返却する
  def type
    raise "#{self.class}##{__method__}が実装されていません"
  end
end