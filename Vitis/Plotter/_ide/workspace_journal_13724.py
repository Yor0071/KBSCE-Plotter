# 2025-12-10T11:37:15.193609500
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="Platform")
status = platform.build()

comp = client.get_component(name="Plot")
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

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Plotter")
status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="Plotter")

client.delete_component(name="Plotter")

client.delete_component(name="Platform")

client.delete_component(name="Platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plott",platform = "$COMPONENT_LOCATION/../Platform/export/Platform/Platform.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plott")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="Plot")

client.delete_component(name="componentName")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

