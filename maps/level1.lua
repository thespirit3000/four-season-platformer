return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 54,
  height = 32,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 6,
  nextobjectid = 19,
  properties = {},
  tilesets = {
    {
      name = "Terrain (16x16)",
      firstgid = 1,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 22,
      image = "../assets/graphics/Terrain/Terrain (16x16).png",
      imagewidth = 352,
      imageheight = 176,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 242,
      tiles = {}
    },
    {
      name = "Pink",
      firstgid = 243,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../assets/graphics/Background/Pink.png",
      imagewidth = 64,
      imageheight = 64,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 16,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 54,
      height = 32,
      id = 3,
      name = "Background",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248,
        251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252, 253, 254, 251, 252,
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 54,
      height = 32,
      id = 1,
      name = "Midground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200,
        200, 200, 180, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 222, 93, 112,
        200, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        200, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        200, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        200, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        200, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        200, 200, 201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        180, 222, 223, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 90, 115, 112,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112, 112, 112,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112, 112, 112,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 112, 112, 112,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 134, 134, 133,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 0, 0, 0, 0, 95, 96, 96, 96, 96, 96, 96, 96, 96, 96, 97, 0, 0, 0, 0, 95, 96, 96, 96, 97, 0, 0, 0, 0, 0, 95, 96, 96, 96, 96, 97, 0, 0, 0, 0, 95, 96, 96, 96, 96, 96, 96, 96, 96, 97, 0, 0, 0, 111,
        201, 16, 0, 0, 0, 117, 118, 118, 118, 118, 118, 118, 118, 118, 118, 119, 0, 0, 0, 0, 117, 118, 118, 118, 119, 0, 0, 0, 0, 0, 117, 118, 118, 118, 118, 119, 0, 0, 0, 0, 117, 118, 118, 118, 118, 118, 118, 118, 118, 119, 0, 0, 0, 111,
        201, 38, 16, 0, 0, 139, 140, 140, 140, 140, 140, 140, 140, 140, 140, 141, 0, 0, 183, 184, 185, 140, 140, 140, 141, 0, 0, 0, 0, 0, 139, 140, 140, 140, 140, 141, 0, 0, 183, 184, 185, 140, 140, 140, 140, 140, 140, 140, 140, 140, 0, 0, 0, 111,
        201, 60, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 16, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 205, 206, 207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        201, 38, 38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, 228, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, 228, 229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111,
        113, 60, 60, 13, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 89, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 115,
        91, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 89, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24, 24
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Player",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 96.5265,
          y = 354.777,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "Platforms",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 79.592,
          y = 384.413,
          width = 176.119,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640.123,
          y = 385.259,
          width = 159.185,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480.939,
          y = 385.259,
          width = 93.1401,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 322.178,
          y = 384.413,
          width = 75.3588,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 47.4163,
          y = 480.939,
          width = 399.654,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16.9345,
          y = 417.435,
          width = 31.3288,
          height = 77.0519,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17.7812,
          y = 401.347,
          width = 12.7009,
          height = 88.906,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 287.886,
          y = 417.435,
          width = 47.417,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 607.101,
          y = 416.588,
          width = 47.417,
          height = 11.8541,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "Bounds",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0.846724,
          y = 11.8541,
          width = 45.7231,
          height = 131.242,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1.69344,
          y = 144.366,
          width = 13.5476,
          height = 365.784,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11.0074,
          y = 496.604,
          width = 448.764,
          height = 13.5474,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 447.917,
          y = 480.939,
          width = 415.742,
          height = 27.9417,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 847.994,
          y = 0.846814,
          width = 16.0884,
          height = 492.793,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 799.73,
          y = 160.878,
          width = 46.5704,
          height = 77.8984,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 831.906,
          y = 1.69354,
          width = 15.2417,
          height = 211.681,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = -1.2704,
          y = -1.69336,
          width = 844.184,
          height = 32.1753,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
