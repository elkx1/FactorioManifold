local tank2 = copyPrototype("storage-tank", "storage-tank", "manifold")
tank2.max_health = 100
tank2.fluid_box =
  {
    base_area = 10,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      { position = {-1, 0} },
      { position = {1, 0} },
      { position = {0, -1} },
      { position = {0, 1} },
    }
  }
tank2.rotatable = false
tank2.two_direction_only = false

tank2.collision_box = {{-0.5, -0.5}, {0.5, 0.5}}
tank2.selection_box = {{-0.7, -0.7}, {0.7, 0.7}}

tank2.window_bounding_box = {{-0.06, 0.1}, {0.06, 0.5}}

-- These connection points are not quite right ...
tank2.circuit_wire_connection_points = 
    {
      {
        shadow =
        {
          red = {2.35938/3, 0.890625/3},
          green = {2.29688/3, 0.953125/3},
        },
        wire =
        {
          red = {-0.40625/3, -0.375/3},
          green = {-0.53125/3, -0.46875/3},
        }
      },
      {
        shadow =
        {
          red = {2.35938/3, 0.890625/3},
          green = {2.29688/3, 0.953125/3},
        },
        wire =
        {
          red = {0.46875/3, -0.53125/3},
          green = {0.375/3, -0.4375/3},
        }
      },
      {
        shadow =
        {
          red = {2.35938/3, 0.890625/3},
          green = {2.29688/3, 0.953125/3},
        },
        wire =
        {
          red = {-0.40625/3, -0.375/3},
          green = {-0.53125/3, -0.46875/3},
        }
      },
      {
        shadow =
        {
          red = {2.35938/3, 0.890625/3},
          green = {2.29688/3, 0.953125/3},
        },
        wire =
        {
          red = {0.46875/3, -0.53125/3},
          green = {0.375/3, -0.4375/3},
        }
      },
    }

tank2.pictures = 
    {
      picture =
      {
        sheets =
        {
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank.png",
            priority = "extra-high",
            frames = 2,
            width = 110,
            height = 108,
            shift = util.by_pixel(0, 4/3.0),
			scale = 1.0 / 3,
            hr_version =
            {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank.png",
              priority = "extra-high",
              frames = 2,
              width = 219,
              height = 215,
              shift = util.by_pixel(-0.25/3, 3.75/3),
              scale = 0.5 / 3,
            }
          },
          {
            filename = "__base__/graphics/entity/storage-tank/storage-tank-shadow.png",
            priority = "extra-high",
            frames = 2,
            width = 146,
            height = 77,
            shift = util.by_pixel(30/3, 22.5/3),
            draw_as_shadow = true,
			scale = 1.0 / 3,
            hr_version =
            {
              filename = "__base__/graphics/entity/storage-tank/hr-storage-tank-shadow.png",
              priority = "extra-high",
              frames = 2,
              width = 291,
              height = 153,
              shift = util.by_pixel(29.75/3, 22.25/3),
              scale = 0.5 / 3,
              draw_as_shadow = true
            }
          }
        }
      },
      fluid_background =
      {
        filename = "__base__/graphics/entity/storage-tank/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 15,
		scale = 1.0 / 3
      },
      window_background =
      {
        filename = "__base__/graphics/entity/storage-tank/window-background.png",
        priority = "extra-high",
        width = 17,
        height = 24,
		scale = 1.0 / 3,
        hr_version =
        {
          filename = "__base__/graphics/entity/storage-tank/hr-window-background.png",
          priority = "extra-high",
          width = 34,
          height = 48,
          scale = 0.5 / 3
        }
      },
      flow_sprite =
      {
        filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 20,
		scale = 1.0 / 3
      },
      gas_flow =
      {
        filename = "__base__/graphics/entity/pipe/steam.png",
        priority = "extra-high",
        line_length = 10,
        width = 24,
        height = 15,
        frame_count = 60,
        axially_symmetrical = false,
        direction_count = 1,
        animation_speed = 0.25,
		scale = 1.0 / 3,
        hr_version =
        {
          filename = "__base__/graphics/entity/pipe/hr-steam.png",
          priority = "extra-high",
          line_length = 10,
          width = 48,
          height = 30,
          frame_count = 60,
          axially_symmetrical = false,
          animation_speed = 0.25,
          direction_count = 1,
		  scale = 0.5 / 3
        }
      }
    }


data:extend({
  tank2
})