module Actions
  def visit url
    jscript "window.location.href = \"#{url}\";"
  end
end

