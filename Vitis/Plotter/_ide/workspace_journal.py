# 2025-12-11T09:36:59.318131500
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform4",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top6.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Platform4")
status = platform.build()

platform = client.get_component(name="Platform3")
status = platform.build()

comp = client.get_component(name="Plot3")
comp.build()

platform = client.get_component(name="Platform4")
status = platform.build()

comp.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="Plot4",platform = "$COMPONENT_LOCATION/../Platform4/export/Platform4/Platform4.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="Plot4")
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

