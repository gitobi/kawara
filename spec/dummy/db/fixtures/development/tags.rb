Kawara::Tag.seed(:id,
  { id: 1,  site_id: 1, name: 'Tag 1'  },
  { id: 2,  site_id: 1, name: 'Tag 2'  },
  { id: 3,  site_id: 1, name: 'Tag 3'  },
  { id: 4,  site_id: 1, name: 'Tag 4'  },
  { id: 5,  site_id: 1, name: 'Tag 5'  },
  { id: 6,  site_id: 1, name: 'Tag 6'  },
  { id: 7,  site_id: 1, name: 'Tag 7'  },
  { id: 8,  site_id: 1, name: 'Tag 8'  },
  { id: 9,  site_id: 1, name: 'Tag 9'  },
  { id: 10, site_id: 1, name: 'Tag 10' },
  { id: 11, site_id: 1, name: 'Tag 11' }
)

Kawara::Tag.find_each do |tag|
  rand(1..8).times do
    tag.articles << Kawara::Article.offset(rand(30)).first
  end
  tag.save
end
