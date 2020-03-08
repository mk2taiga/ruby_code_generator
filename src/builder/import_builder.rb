require_relative 'builder'

# ImportSpec生成クラス
class ImportBuilder
  include Builder

  def initialize
    @require_type = nil
    @require_path = nil
  end

  # @param[Decorator]
  def set_require(require)
    @require_type = require
  end

  # @param[String]
  def set_require_path(path)
    @require_path = path
  end

  # @return[ImportComponent]
  def build
    ImportComponent.new(@require_path, @require_path)
  end

end