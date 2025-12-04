# 2025-12-04T10:23:02.714180300
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Plotter")
status = platform.build()

comp = client.create_app_component(name="Plotter_app",platform = "$COMPONENT_LOCATION/../Plotter/export/Plotter/Plotter.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="Plotter_app")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa")

client.delete_component(name="plotter_component")

client.delete_component(name="plotter_hw")

client.delete_component(name="componentName")

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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa")

status = platform.build()

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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa")

status = platform.build()

comp.build()

status = platform.build()

