# 2025-12-12T13:06:31.095603
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="lnx-X")
status = platform.build()

comp = client.get_component(name="app-X")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Y-lnx",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Y-lnx")
status = platform.build()

comp = client.create_app_component(name="Y-app",platform = "$COMPONENT_LOCATION/../Y-lnx/export/Y-lnx/Y-lnx.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="Y-app")
comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Z-lnx",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="Z-lnx")
status = platform.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "AA-lnx",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="AA-lnx")
status = platform.build()

status = platform.build()

comp = client.create_app_component(name="AA-app",platform = "$COMPONENT_LOCATION/../AA-lnx/export/AA-lnx/AA-lnx.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="AA-app")
comp.build()

status = platform.build()

comp.build()

client.delete_component(name="app-U")

client.delete_component(name="app-o-cpp")

client.delete_component(name="componentName")

client.delete_component(name="Z-lnx")

client.delete_component(name="Y-lnx")

client.delete_component(name="Y-app")

client.delete_component(name="componentName")

client.delete_component(name="lnx-O")

client.delete_component(name="lnx-P")

client.delete_component(name="lnx-Q")

client.delete_component(name="lnx-R")

client.delete_component(name="lnx-S")

client.delete_component(name="lnx-T")

client.delete_component(name="lnx-V")

client.delete_component(name="lnx-X")

client.delete_component(name="app-R")

client.delete_component(name="componentName")

vitis.dispose()

