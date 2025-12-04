# 2025-12-04T14:07:59.131350
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter_component",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plotter_app",platform = "$COMPONENT_LOCATION/../Plotter_component/export/Plotter_component/Plotter_component.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Plotter_component")
status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp = client.get_component(name="Plotter_app")
comp.build()

client.delete_component(name="Plotter_component")

client.delete_component(name="Plotter_component")

client.delete_component(name="Plotter_app")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter_Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Plotter_Platform")
status = platform.build()

client.delete_component(name="Plotter_Platform")

client.delete_component(name="Plotter_Platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotter",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Plotter")
status = platform.build()

comp = client.create_app_component(name="Plotter_app",platform = "$COMPONENT_LOCATION/../Plotter/export/Plotter/Plotter.xpfm",domain = "standalone_microblaze_riscv_0")

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

client.delete_component(name="Plotter_app")

comp = client.create_app_component(name="Plotter_app",platform = "$COMPONENT_LOCATION/../Plotter/export/Plotter/Plotter.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp.build()

client.delete_component(name="Plotter_app")

client.delete_component(name="Plotter")

client.delete_component(name="componentName")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="app",platform = "$COMPONENT_LOCATION/../Platform/export/Platform/Platform.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app")
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

