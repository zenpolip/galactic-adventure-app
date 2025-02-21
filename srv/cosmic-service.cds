using galacticAdventure from '../db/schema';

service CosmicService @(requires: 'authenticated-user') {
  @restrict: [
    {
      grant: ['READ'],
      to   : [
        'SpacefarerViewer',
        'SpacefarerAdmin'
      ]
    },
    {
      grant: [
        'READ',
        'CREATE',
        'UPDATE',
        'DELETE'
      ],
      to   : 'SpacefarerAdmin'
    }
  ]
  entity Spacefarers         as projection on galacticAdventure.Spacefarers;

  @(restrict: [{
    grant: ['READ'],
    to   : 'authenticated-user'
  }])
  entity SpacefarerPositions as projection on galacticAdventure.Positions;
}
