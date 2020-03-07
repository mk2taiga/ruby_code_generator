# ユースケースモジュール
module UseCase
  # ユースケースの実行処理
  def execute(command = nil)
    raise "#{self.class}##{__method__}が実装されていません"
  end
end