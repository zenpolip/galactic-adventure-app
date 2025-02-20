using {cuid} from '@sap/cds/common';

namespace galacticAdventure;

entity Spacefarers : cuid {
  name               : String;
  originPlanet       : String;
  spacesuitColor     : String;
  stardustCollection : Integer;
  wormholeNavSkill   : Integer;
}
