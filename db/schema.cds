using {
  cuid,
  managed
} from '@sap/cds/common';

namespace galacticAdventure;

type SkillLevel : String enum {
  Beginner;
  Intermediate;
  Advanced;
  Expert;
}

entity Spacefarers : cuid, managed {
  name               : String;
  email              : String  @assert.format: email;
  originPlanet       : String;
  spacesuitColor     : String;
  stardustCollection : Integer @assert.range : [
    (0),
    _
  ];
  wormholeNavSkill   : SkillLevel;
  department         : Association to Departments;
  position           : Association to Positions;
}

entity Departments : cuid {
  name        : String;
  spacefarers : Association to many Spacefarers
                  on spacefarers.department = $self;
}

entity Positions : cuid {
  title : String;
}
