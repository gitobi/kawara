Kawara::Tag.seed(:id,
  { id: 1,  name: 'Tag 1'  },
  { id: 2,  name: 'Tag 2'  },
  { id: 3,  name: 'Tag 3'  },
  { id: 4,  name: 'Tag 4'  },
  { id: 5,  name: 'Tag 5'  },
  { id: 6,  name: 'Tag 6'  },
  { id: 7,  name: 'Tag 7'  },
  { id: 8,  name: 'Tag 8'  },
  { id: 9,  name: 'Tag 9'  },
  { id: 10, name: 'Tag 10' },
  { id: 11, name: 'Tag 11' }
)

Kawara::Tag.find_each do |tag|
  rand(1..8).times do
    tag.articles << Kawara::Article.offset(rand(30)).first
  end
  tag.save
end
