module Utility
  # Remove params
  # 
  # @param [String] url_string
  # @return [String]
  # @see https://stackoverflow.com/questions/2149639/what-is-the-most-elegant-way-in-ruby-to-remove-a-parameter-from-a-url
  def remove_params(url_string)
    # Regex from RFC3986
    url_regex = %r"^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?$"
    matched = url_string.match(url_regex)
    
    matched[5] || url_string
  end
end
