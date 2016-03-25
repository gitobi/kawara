Kawara::Category.seed(:id,
  { id: 1,  name: FFaker::Skill.tech_skill },
  { id: 2,  name: FFaker::Skill.tech_skill },
  { id: 3,  name: FFaker::Skill.tech_skill },
  { id: 4,  name: FFaker::Skill.tech_skill },
  { id: 5,  name: FFaker::Skill.tech_skill },
  { id: 6,  name: FFaker::Skill.tech_skill },
  { id: 7,  name: FFaker::Skill.tech_skill },
  { id: 8,  name: FFaker::Skill.tech_skill },
  { id: 9,  name: FFaker::Skill.tech_skill },
  { id: 10, name: FFaker::Skill.tech_skill },
  { id: 11, name: FFaker::Skill.tech_skill }
)

Kawara::Category.find_each { |category| category.save }
