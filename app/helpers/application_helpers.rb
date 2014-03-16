class Main
  module ApplicationHelpers

    def link_to(url,text=url, opts={})
      attributes = ""
      opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
      %Q{<a href="#{url}" #{attributes}>#{text}</a>}
    end
  end

  helpers ApplicationHelpers
end
