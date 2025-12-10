# 2025-12-10T13:54:13.359713
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="lnx-12-10-A")
status = platform.build()

comp = client.get_component(name="app-12-10-A")
comp.build()

platform = client.get_component(name="lnx-H")
status = platform.build()

comp = client.get_component(name="app-H")
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

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-i",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="app-i",platform = "$COMPONENT_LOCATION/../lnx-i/export/lnx-i/lnx-i.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="lnx-i")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app-i")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

