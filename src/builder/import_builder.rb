require_relative 'builder'
require_relative '../entity/import_component'

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
    raise 'require_typeとrequire_pathをセットしてください' if @require_type == nil || @require_path == nil
    ImportComponent.new(@require_type, @require_path)
  end

end