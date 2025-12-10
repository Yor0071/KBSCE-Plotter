# 2025-12-10T13:23:21.268810700
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="Platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top2.xsa")

status = platform.build()

comp = client.get_component(name="Plott")
status = comp.clean()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="Platform")

client.delete_component(name="Platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top2.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top3.xsa")

status = platform.build()

status = platform.build()

comp.build()

vitis.dispose()

