Kawara::Article.seed(:id,
  { id: 1,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 2,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 3,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 4,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 5,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 6,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 7,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 8,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 9,  category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 10, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 11, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 12, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 13, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 14, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 15, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 16, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 17, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 18, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 19, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 20, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 21, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 22, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 23, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 24, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :draft     },
  { id: 25, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 26, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 27, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 28, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 29, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published },
  { id: 30, category_id: rand(11), title: FFaker::CheesyLingo.title, subtitle: FFaker::Movie.title,  content: '# Header 1', status: :published }
)
Kawara::Article.find_each { |article| article.save }