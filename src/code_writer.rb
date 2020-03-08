# コードを書き出す
class CodeWriter

  # @param[Component]
  # @param[String]
  def write(spec, create_path)
    code = spec.to_code
    puts code

    File.open(create_path, "w") do |file|
      file.puts code
    end
  end

end