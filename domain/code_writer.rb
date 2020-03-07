# コードを書き出すモジュール
module CodeWriter

  def write(code_builder)
    raise "#{self.class}##{__method__}が実装されていません"
  end

end