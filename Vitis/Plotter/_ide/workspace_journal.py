# 2025-12-15T09:32:03.862320800
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotform3",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plot8",platform = "$COMPONENT_LOCATION/../Plotform3/export/Plotform3/Plotform3.xpfm",domain = "standalone_microblaze_riscv_0")

comp = client.get_component(name="Plot8")
status = comp.import_files(from_loc="", files=["C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Encoders.cpp", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Encoders.h", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Main.cpp", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Motor.cpp", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Motor.h", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\ov7670_i2c.cpp", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\ov7670_i2c.h", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Plotter.cpp", "C:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vitis\Plotter\Plot7\src\Plotter.h"])

platform = client.get_component(name="Plotform3")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plot8")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

