# Master data
#
# Role
Kawara::Role.find_or_create_by(id: Kawara::Role::ROLES[:admin][:id])  { |role| role.name = Kawara::Role::ROLES[:admin][:name]  }
Kawara::Role.find_or_create_by(id: Kawara::Role::ROLES[:editor][:id]) { |role| role.name = Kawara::Role::ROLES[:editor][:name] }
Kawara::Role.find_or_create_by(id: Kawara::Role::ROLES[:writer][:id]) { |role| role.name = Kawara::Role::ROLES[:writer][:name] }
