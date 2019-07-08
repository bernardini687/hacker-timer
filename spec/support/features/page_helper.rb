module Features
  def have_h1(text)
    have_css 'h1', text: text
  end
end
