using galacticAdventure from '../db/schema';

service CosmicService @(requires: 'authenticated-user') {
  entity Spacefarers as projection on galacticAdventure.Spacefarers;
}
