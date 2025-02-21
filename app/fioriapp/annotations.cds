using CosmicService as service from '../../srv/cosmic-service';

annotate service.Spacefarers with @(
  UI.FieldGroup #GeneratedGroup: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Label: 'name',
        Value: name,
      },
      {
        $Type: 'UI.DataField',
        Label: 'email',
        Value: email,
      },
      {
        $Type: 'UI.DataField',
        Label: 'originPlanet',
        Value: originPlanet,
      },
      {
        $Type: 'UI.DataField',
        Label: 'spacesuitColor',
        Value: spacesuitColor,
      },
      {
        $Type: 'UI.DataField',
        Label: 'stardustCollection',
        Value: stardustCollection,
      },
      {
        $Type: 'UI.DataField',
        Label: 'wormholeNavSkill',
        Value: wormholeNavSkill,
      },
    ],
  },
  UI.Facets                    : [{
    $Type : 'UI.ReferenceFacet',
    ID    : 'GeneratedFacet1',
    Label : 'General Information',
    Target: '@UI.FieldGroup#GeneratedGroup',
  }, ],
  UI.LineItem                  : [
    {
      $Type: 'UI.DataField',
      Label: 'name',
      Value: name,
    },
    {
      $Type: 'UI.DataField',
      Label: 'email',
      Value: email,
    },
    {
      $Type: 'UI.DataField',
      Label: 'originPlanet',
      Value: originPlanet,
    },
    {
      $Type: 'UI.DataField',
      Label: 'spacesuitColor',
      Value: spacesuitColor,
    },
    {
      $Type: 'UI.DataField',
      Label: 'stardustCollection',
      Value: stardustCollection,
    },
  ],
);

annotate service.Spacefarers with {
  position @Common.ValueList: {
    $Type         : 'Common.ValueListType',
    CollectionPath: 'SpacefarerPositions',
    Parameters    : [
      {
        $Type            : 'Common.ValueListParameterInOut',
        LocalDataProperty: position_ID,
        ValueListProperty: 'ID',
      },
      {
        $Type            : 'Common.ValueListParameterDisplayOnly',
        ValueListProperty: 'title',
      },
    ],
  }
};
