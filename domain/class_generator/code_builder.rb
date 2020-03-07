# コード生成情報を持つクラス
class CodeBuilder
  
  attr_reader :class_spec,
              :create_path

  def initialize(class_spec, create_path)
    @class_spec = class_spec
    @create_path = create_path
  end

end