require_relative 'component'

# メソッドに必要な要素を持つエンティティ
class MethodComponent < Component

  def initialize(method_name, decorator, parameters, contents)
    @method_name = method_name
    @decorator = decorator
    @parameters = parameters
    @contents = contents
  end

  def get_decorator
    @decorator
  end

  # @return[String]
  def to_code
    method = [
        create_method_define,
        creat_method_content,
        'end'
    ].join("\n")
  end

  private

  def create_method_define
    define = 'def ' + @method_name
    unless @parameters.empty?
      define << '('

      @parameters.each_with_index do |param, index|
        if index == 0
          define << param
          next
        end
        define << ', ' + param
      end

      define << ')'
    end

    define
  end

  def creat_method_content
    @contents.join("\n")
  end
end