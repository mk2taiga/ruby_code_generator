require_relative 'component'

# パラメーター生成に必要な要素を持つエンティティ
class ParameterComponent < Component

  def initialize(parameter_name, decorator)
    @parameter_name = parameter_name
    @decorator = decorator
  end

  # @return[String]
  def to_code
    puts 'ファイル生成処理を行う'
  end
end