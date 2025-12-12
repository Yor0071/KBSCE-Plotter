# 2025-12-05T13:36:46.216251
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="Platform")
status = platform.build()

comp = client.get_component(name="app")
comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa")

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa")

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="Platform")

client.delete_component(name="Platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Plotter")
status = platform.build()

status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

