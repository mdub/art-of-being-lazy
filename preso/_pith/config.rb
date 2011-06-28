require 'coderay'

project.helpers do

  def code(content)
    tokens = CodeRay.scan(content, :ruby)
    tokens.div :line_numbers => :inline, :css => :class
  end
  
  def raw_link(url)
    %{<a href="#{url}">#{url}</a>}
  end
  
end
