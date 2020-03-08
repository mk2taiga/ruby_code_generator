# コードを書き出す
class CodeWriter

  # @param[Component]
  # @param[String]
  def write(spec, create_path)
    puts spec.to_code
  end

end