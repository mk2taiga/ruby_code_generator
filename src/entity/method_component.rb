require_relative 'component'

# メソッドに必要な要素を持つエンティティ
class MethodComponent < Component

  def initialize(method_name, decorator, parameters, contents)
    @method_name = method_name
    @decorator = decorator
    @parameters = parameters
    @contents = contents
  end

  # @return[String]
  def to_code
    puts 'ファイル生成処理を行う'
  end
end