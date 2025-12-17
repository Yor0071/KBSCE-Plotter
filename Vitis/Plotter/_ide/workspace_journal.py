# 2025-12-17T13:04:54.862136
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "LinuxPlotform1",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plot9",platform = "$COMPONENT_LOCATION/../LinuxPlotform1/export/LinuxPlotform1/LinuxPlotform1.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="LinuxPlotform1")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plot9")
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

status = platform.build()

comp.build()

