{
  "actions": [
    {
      "documentation": "Toggle trails on or off for satellites around Earth",
      "gui_path": "/Solar System/Earth",
      "identifier": "profile.toggle.satellite",
      "is_local": false,
      "name": "Toggle satellite trails",
      "script": "local list = openspace.getProperty('{earth_satellites}.Renderable.Enabled'); for _,v in pairs(list) do openspace.setPropertyValueSingle(v, not openspace.getPropertyValue(v)) end"
    },
    {
      "documentation": "Refocuses the camera on the ISS",
      "gui_path": "/Solar System/Earth",
      "identifier": "profile.focus.iss",
      "is_local": false,
      "name": "Focus ISS",
      "script": "openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.Aim', '');openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.Anchor', 'ISS');openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.RetargetAnchor', nil);"
    },
    {
      "documentation": "Retargets the camera on Earth",
      "gui_path": "/Solar System/Earth",
      "identifier": "profile.focus.earth",
      "is_local": false,
      "name": "Focus on Earth",
      "script": "openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.Aim', '');openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.Anchor', 'Earth')openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.RetargetAnchor', nil);"
    }
  ],
  "additional_scripts": [
    "openspace.time.setPause(true)",
    "openspace.navigation.loadNavigationState('${USER}/data/assets-dev/flight-practice/grandcanyonriverstart.txt')"
  ],
  "assets": [
    "baseReduced",
    "scene/solarsystem/planets/earth/earth",
    "${USER}/data/assets-dev/flight-practice/make-targets-for-grand-canyon"
  ],
  "camera": {
    "altitude": 15000000.0,
    "anchor": "Earth",
    "latitude": 35.7510,
    "longitude": -113.4092,
    "type": "goToGeo"
  },
  "delta_times": [
    1.0,
    5.0,
    30.0,
    60.0,
    300.0,
    1800.0,
    3600.0,
    43200.0,
    86400.0,
    604800.0,
    1209600.0,
    2592000.0,
    5184000.0,
    7776000.0,
    15552000.0,
    31536000.0,
    63072000.0,
    157680000.0,
    315360000.0,
    630720000.0
  ],
  "keybindings": [
    {
      "action": "profile.toggle.satellite",
      "key": "S"
    },
    {
      "action": "profile.focus.iss",
      "key": "I"
    },
    {
      "action": "profile.focus.earth",
      "key": "HOME"
    }
  ],
  "mark_nodes": [
    "Earth",
    "Mars",
    "Moon",
    "Sun",
    "Venus",
    "ISS"
  ],
  "meta": {
    "author": "OpenSpace Team",
    "description": "Default OpenSpace Profile. Adds Earth satellites not contained in other profiles.",
    "license": "MIT License",
    "name": "Default",
    "url": "https://www.openspaceproject.com",
    "version": "1.0"
  },
  "properties": [
    {
      "name": "Scene.Earth.Renderable.Layers.ColorLayers.ESRI_World_Imagery.Enabled",
      "type": "setPropertyValueSingle",
      "value": "true"
    },
    {
      "name": "Scene.Earth.Renderable.Layers.ColorLayers.ESRI_VIIRS_Combo.Enabled",
      "type": "setPropertyValueSingle",
      "value": "false"
    }
  ],
  "time": {
    "type": "absolute",
    "value": "2022-06-14T17:19:00"
  },
  "version": {
    "major": 1,
    "minor": 1
  }
}
