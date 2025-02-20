using galacticAdventure from '../db/schema';

service CosmicService {
  entity Spacefarers as projection on galacticAdventure.Spacefarers;
}
