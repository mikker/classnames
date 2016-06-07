module ClassNames
  def classnames(*args)
    args = Array(args)

    args.reduce([]) do |arr, arg|
      if value = format(arg)
        arr << value
      else
        arr
      end
    end.flatten.join(' ')
  end

  private

  def format arg
    if arg.is_a?(Hash)
      format_hash(arg)
    elsif arg.respond_to?(:call)
      arg.call
    else
      arg
    end
  end

  def format_hash hsh
    hsh.reduce([]) do |result, kv|
      key, value = kv

      if value
        result.concat([key])
      else
        result
      end
    end
  end
end
