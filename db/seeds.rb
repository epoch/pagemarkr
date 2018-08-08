Bookmark.destroy_all

["https://www.codingblocks.net/podcast/clean-code-writing-meaningful-names/",
  "https://guides.rubyonrails.org/",
  "https://github.com/epoch",
  "https://www.google.com",
  "https://en.wikipedia.org/wiki/Modal_window",
  "https://github.com/jaimeiniesta/metainspector",
  "https://sass-lang.com/guide"].each do |url|
    b = Bookmark.new
    b.url = url
    b.title = MetaInspector.new(b.url).best_title
    b.save
  end