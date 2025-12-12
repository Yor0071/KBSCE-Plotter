# 2025-12-12T09:05:00.613967
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

comp = client.create_app_component(name="app-N",platform = "$COMPONENT_LOCATION/../lnx-N/export/lnx-N/lnx-N.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="lnx-N")
status = platform.build()

comp = client.get_component(name="app-N")
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

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-O",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-O")
status = platform.build()

status = platform.build()

comp.build()

comp = client.create_app_component(name="app-O",platform = "$COMPONENT_LOCATION/../lnx-O/export/lnx-O/lnx-O.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-O")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="lnx-N")

client.delete_component(name="lnx-M")

client.delete_component(name="lnx-L")

client.delete_component(name="lnx-K")

client.delete_component(name="componentName")

client.delete_component(name="app-K")

client.delete_component(name="componentName")

client.delete_component(name="app-N")

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

comp = client.create_app_component(name="app-o-cpp",platform = "$COMPONENT_LOCATION/../lnx-O/export/lnx-O/lnx-O.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-o-cpp")
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

