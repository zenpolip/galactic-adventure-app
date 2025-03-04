using CosmicService as service from '../../srv/cosmic-service';

annotate service.Spacefarers with @(
  UI.FieldGroup #GeneratedGroup: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Label: 'Name',
        Value: name,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Email',
        Value: email,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Origin Planet',
        Value: originPlanet,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Department',
        Value: department_ID,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Position',
        Value: position_ID,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Spacesuit Color',
        Value: spacesuitColor,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Stardust Collection',
        Value: stardustCollection,
      },
      {
        $Type: 'UI.DataField',
        Label: 'Wormhole Navigation Skill',
        Value: wormholeNavSkill,
      }
    ],
  },
  UI.Facets                    : [{
    $Type : 'UI.ReferenceFacet',
    ID    : 'GeneratedFacet1',
    Label : 'Spacefarer Information',
    Target: '@UI.FieldGroup#GeneratedGroup',
  }, ],
  UI.LineItem                  : [
    {
      $Type: 'UI.DataField',
      Label: 'Name',
      Value: name,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Email',
      Value: email,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Origin Planet',
      Value: originPlanet,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Spacesuit Color',
      Value: spacesuitColor,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Stardust Collection',
      Value: stardustCollection,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Department',
      Value: department_ID,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Position',
      Value: position_ID,
    },
    {
      $Type: 'UI.DataField',
      Label: 'Wormhole Navigation Skill',
      Value: wormholeNavSkill,
    },
  ],
);


annotate service.Spacefarers with {
  department @(Common: {
    ValueListWithFixedValues,
    Text     : {
      $value                : department.name,
      ![@UI.TextArrangement]: #TextOnly
    },
    ValueList: {
      $Type         : 'Common.ValueListType',
      CollectionPath: 'SpafarerDepartments',
      Parameters    : [
        {
          $Type            : 'Common.ValueListParameterInOut',
          LocalDataProperty: department_ID,
          ValueListProperty: 'ID'
        },
        {
          $Type            : 'Common.ValueListParameterDisplayOnly',
          ValueListProperty: 'name',
        },
      ]
    },
  });
};

annotate service.Spacefarers with {
  position @(Common: {
    ValueListWithFixedValues,
    Text     : {
      $value                : position.title,
      ![@UI.TextArrangement]: #TextOnly
    },
    ValueList: {
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
  });
};

annotate galacticAdventure.Spacefarers with @fiori.draft.enabled;
annotate service.Spacefarers with @odata.draft.enabled;
