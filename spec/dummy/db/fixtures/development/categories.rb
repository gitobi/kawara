Kawara::Category.seed(:id,
  { id: 1,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 2,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 3,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 4,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 5,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 6,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 7,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 8,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 9,  site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 10, site_id: 1, name: FFaker::Skill.tech_skill },
  { id: 11, site_id: 1, name: FFaker::Skill.tech_skill }
)

Kawara::Category.find_each { |category| category.save }
