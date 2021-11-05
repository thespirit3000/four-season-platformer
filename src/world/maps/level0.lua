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
  nextlayerid = 9,
  nextobjectid = 81,
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
      image = "../../../assets/graphics/Terrain/Terrain (16x16).png",
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
      name = "Green",
      firstgid = 243,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../../../assets/graphics/Background/Green.png",
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
    },
    {
      name = "Gray",
      firstgid = 259,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 4,
      image = "../../../assets/graphics/Background/Gray.png",
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
    },
    {
      name = "Apple",
      firstgid = 275,
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 34,
      image = "../../../assets/graphics/Items/Fruits/Apple.png",
      imagewidth = 544,
      imageheight = 32,
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
      tilecount = 68,
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
      id = 2,
      name = "background",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
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
        243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 243, 244, 245, 246, 30, 30, 30, 30, 30, 30, 30, 30, 30, 244,
        247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 247, 248, 249, 250, 30, 248, 30, 30, 30, 30, 30, 250, 247, 248,
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
        255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256, 257, 258, 255, 256
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 54,
      height = 32,
      id = 1,
      name = "ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 92, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 45,
        112, 135, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 30, 30, 30, 30, 30, 30, 30, 30, 30, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 51, 52, 52, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 52, 52, 52, 52, 52, 30, 30, 30, 30, 30, 30, 31, 31, 30, 30, 30, 30, 30, 30, 30, 30, 31, 23,
        112, 114, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 52, 52, 52, 52, 52, 52, 53, 53, 30, 30, 30, 30, 30, 30, 30, 30, 31, 45,
        112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 112, 26, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 27
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 8,
      name = "Enemies",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 70,
          name = "",
          type = "",
          shape = "rectangle",
          x = 644.667,
          y = 461.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "mushroom"
          }
        },
        {
          id = 72,
          name = "",
          type = "",
          shape = "rectangle",
          x = 741.333,
          y = 303.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "mushroom"
          }
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 358.667,
          y = 445.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "mushroom"
          }
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 569.333,
          y = 222.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "mushroom"
          }
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 521.333,
          y = 383.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "angry-pig"
          }
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 113.333,
          y = 256.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bee"
          }
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176,
          y = 256.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bee"
          }
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 241.333,
          y = 256.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bee"
          }
        },
        {
          id = 80,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480.667,
          y = 206.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bee"
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 6,
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
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2,
          y = 480,
          width = 573,
          height = 31,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 497.333,
          width = 290,
          height = 15.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 847.5,
          y = 1,
          width = 17,
          height = 496.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = -0.666667,
          y = 1,
          width = 32.1667,
          height = 482,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 1,
          width = 529,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 515.833,
          y = -1.16667,
          width = 348.833,
          height = 15.5,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
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
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 223,
          width = 175,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 529.5,
          y = 256.5,
          width = 175,
          height = 13.3333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 416,
          width = 206.667,
          height = 14,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 68,
          name = "",
          type = "",
          shape = "rectangle",
          x = 657.333,
          y = 337.333,
          width = 188.667,
          height = 13.3333,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "Walls",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0.818182,
          y = 1.18182,
          width = 8.18182,
          height = 463.182,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 854.909,
          y = -0.591,
          width = 8.18182,
          height = 463.182,
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
          x = 192,
          y = 428.5,
          width = 32,
          height = 32,
          rotation = 0,
          visible = false,
          properties = {}
        },
        {
          id = 24,
          name = "",
          type = "Player",
          shape = "rectangle",
          x = 791,
          y = 190.333,
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
      id = 7,
      name = "Items",
      visible = false,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["type"] = "Bananas"
      },
      objects = {
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 513.333,
          y = 384,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "apple"
          }
        },
        {
          id = 56,
          name = "",
          type = "",
          shape = "rectangle",
          x = 47.3333,
          y = 432.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "apple"
          }
        },
        {
          id = 57,
          name = "",
          type = "",
          shape = "rectangle",
          x = 95.3333,
          y = 431.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "apple"
          }
        },
        {
          id = 58,
          name = "",
          type = "",
          shape = "rectangle",
          x = 192,
          y = 430.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "apple"
          }
        },
        {
          id = 59,
          name = "",
          type = "",
          shape = "rectangle",
          x = 144,
          y = 430.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "apple"
          }
        },
        {
          id = 60,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80.6667,
          y = 384,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bananas"
          }
        },
        {
          id = 61,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128.667,
          y = 382.667,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bananas"
          }
        },
        {
          id = 63,
          name = "",
          type = "",
          shape = "rectangle",
          x = 176.667,
          y = 383.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "bananas"
          }
        },
        {
          id = 64,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240.667,
          y = 430,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "kiwi"
          }
        },
        {
          id = 65,
          name = "",
          type = "",
          shape = "rectangle",
          x = 289.333,
          y = 431.333,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {
            ["type"] = "kiwi"
          }
        }
      }
    }
  }
}
