using {
  cuid,
  managed
} from '@sap/cds/common';

namespace galacticAdventure;

entity Spacefarers : cuid, managed {
  name               : String;
  originPlanet       : String;
  spacesuitColor     : String;
  stardustCollection : Integer;
  wormholeNavSkill   : Integer;
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
