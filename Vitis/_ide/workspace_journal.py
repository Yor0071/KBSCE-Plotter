# 2025-12-17T12:53:16.265183
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "linux_plotform1",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="app1",platform = "$COMPONENT_LOCATION/../linux_plotform1/export/linux_plotform1/linux_plotform1.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="linux_plotform1")
status = platform.build()

comp = client.get_component(name="app1")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

