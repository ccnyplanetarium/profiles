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
      "documentation": "Retargets the camera on Earth",
      "gui_path": "/Solar System/Earth",
      "identifier": "profile.focus.earth",
      "is_local": false,
      "name": "Focus on Earth",
      "script": "openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.Aim', '');openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.Anchor', 'Earth')openspace.setPropertyValueSingle('NavigationHandler.OrbitalNavigator.RetargetAnchor', nil);"
    },
    {
      "documentation": "Makes Jupiter's moons 50x larger",
      "gui_path": "/Solar System/Jupiter",
      "identifier": "growmoons",
      "is_local": false,
      "name": "Grow Jupiters Moons",
      "script": "openspace.action.triggerAction(\"os.Grow_{moon_jupiter}\")\n"
    },
    {
      "documentation": "Make Jupiter's moon 1x normal size.",
      "gui_path": "/Solar System/Jupiter",
      "identifier": "shrinkmoons",
      "is_local": false,
      "name": "Shrink Jupiters Moons",
      "script": "openspace.action.triggerAction(\"os.Shrink_{moon_jupiter}\")\n"
    },
    {
      "documentation": "Flies to Earth",
      "gui_path": "/Solar System/Earth",
      "identifier": "flytoEarth",
      "is_local": false,
      "name": "Fly to Earth",
      "script": "openspace.pathnavigation.flyTo(\"Earth\")\n"
    },
    {
      "documentation": "Flies to Jupiter",
      "gui_path": "/Solar System/Jupiter",
      "identifier": "flytojupiter",
      "is_local": false,
      "name": "Fly to Jupiter",
      "script": "openspace.pathnavigation.flyTo(\"Jupiter\")"
    }
  ],
  "assets": [
    "actions/planets/scale_planets_and_moons",
    "base",
    "events/toggle_sun",
    "scene/solarsystem/planets/earth/earth",
    "scene/solarsystem/planets/earth/satellites/satellites"
  ],
  "camera": {
    "altitude": 17000000.0,
    "anchor": "Earth",
    "latitude": 58.5877,
    "longitude": 16.1924,
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
      "action": "flytoEarth",
      "key": "HOME"
    },
    {
      "action": "growmoons",
      "key": "B"
    },
    {
      "action": "shrinkmoons",
      "key": "S"
    },
    {
      "action": "flytojupiter",
      "key": "J"
    }
  ],
  "mark_nodes": [
    "Earth",
    "Jupiter",
    "Io",
    "Europa",
    "Ganymede",
    "Callisto"
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
    },
    {
      "name": "{earth_satellites}.Renderable.Enabled",
      "type": "setPropertyValue",
      "value": "false"
    },
    {
      "name": "Scene.Jupiter.Renderable.PerformShading",
      "type": "setPropertyValueSingle",
      "value": "false"
    },
    {
      "name": "Scene.Ganymede.Renderable.PerformShading",
      "type": "setPropertyValueSingle",
      "value": "false"
    },
    {
      "name": "Scene.Callisto.Renderable.PerformShading",
      "type": "setPropertyValueSingle",
      "value": "false"
    },
    {
      "name": "Scene.Io.Renderable.PerformShading",
      "type": "setPropertyValueSingle",
      "value": "false"
    },
    {
      "name": "Scene.Europa.Renderable.PerformShading",
      "type": "setPropertyValueSingle",
      "value": "false"
    },
    {
      "name": "Scene.IoTrail.Renderable.Appearance.LineWidth",
      "type": "setPropertyValueSingle",
      "value": "20.000000"
    },
    {
      "name": "Scene.GanymedeTrail.Renderable.Appearance.LineWidth",
      "type": "setPropertyValueSingle",
      "value": "20.000000"
    },
    {
      "name": "Scene.EuropaTrail.Renderable.Appearance.LineWidth",
      "type": "setPropertyValueSingle",
      "value": "20.000000"
    },
    {
      "name": "Scene.CallistoTrail.Renderable.Appearance.LineWidth",
      "type": "setPropertyValueSingle",
      "value": "20.000000"
    },
    {
      "name": "Scene.ISSModel.Renderable.Enabled",
      "type": "setPropertyValueSingle",
      "value": "false"
    },
    {
      "name": "Scene.ISS_trail.Renderable.Enabled",
      "type": "setPropertyValueSingle",
      "value": "false"
    }
  ],
  "time": {
    "type": "relative",
    "value": "-1d"
  },
  "version": {
    "major": 1,
    "minor": 1
  }
}