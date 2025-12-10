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

client.delete_component(name="app-12-10-A")

client.delete_component(name="componentName")

client.delete_component(name="app-12-10-B")

client.delete_component(name="componentName")

client.delete_component(name="app-12-10-C")

client.delete_component(name="componentName")

client.delete_component(name="app-12-10-D")

client.delete_component(name="componentName")

client.delete_component(name="app-E")

client.delete_component(name="componentName")

client.delete_component(name="app-F")

client.delete_component(name="componentName")

client.delete_component(name="app-G")

client.delete_component(name="componentName")

client.delete_component(name="app-H")

client.delete_component(name="componentName")

client.delete_component(name="lnx-12-10-A")

client.delete_component(name="linux_platform")

client.delete_component(name="lnx-12-10-C")

client.delete_component(name="lnx-12-10-B")

client.delete_component(name="lnx-E")

client.delete_component(name="lnx-12-10-D")

client.delete_component(name="lnx-G")

client.delete_component(name="lnx-F")

client.delete_component(name="lnx-H")

client.delete_component(name="new_app")

client.delete_component(name="componentName")

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-J",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="app-J",platform = "$COMPONENT_LOCATION/../lnx-J/export/lnx-J/lnx-J.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="lnx-J")
status = platform.build()

status = platform.build()

comp = client.get_component(name="app-J")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-K",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-K")
status = platform.build()

comp = client.create_app_component(name="app-K",platform = "$COMPONENT_LOCATION/../lnx-K/export/lnx-K/lnx-K.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-K")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

