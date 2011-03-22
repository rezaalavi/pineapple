module Actions
  def visit url
    @script += "window.location.href = \"#{url}\";\n"
  end
end

