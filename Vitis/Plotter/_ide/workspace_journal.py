# 2025-12-12T12:16:05.084341500
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform5",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top7.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plot5",platform = "$COMPONENT_LOCATION/../Platform5/export/Platform5/Platform5.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Platform5")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plot5")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotform1",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top8.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

client.delete_component(name="Platform3")

client.delete_component(name="componentName")

comp = client.create_app_component(name="Plot6",platform = "$COMPONENT_LOCATION/../Plotform1/export/Plotform1/Plotform1.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Plotform1")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plot6")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Plotform2",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top9.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plot7",platform = "$COMPONENT_LOCATION/../Plotform2/export/Plotform2/Plotform2.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Plotform2")
status = platform.build()

comp = client.get_component(name="Plot7")
comp.build()

status = platform.build()

comp.build()

