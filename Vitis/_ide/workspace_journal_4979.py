# 2025-12-09T11:22:05.924008
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="linux")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa")

domain = platform.get_domain(name="standalone_microblaze_riscv_0")

status = domain.regenerate()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa")

status = domain.regenerate()

status = domain.update_path(option = "OS",name="standalone", new_path = "/home/maartenvk/apps/Xilinx/2025.1/Vitis/data/embeddedsw/lib/bsp/standalone_v9_3")

status = platform.build()

comp = client.get_component(name="app")
comp.build()

comp.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "linux_platform",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="new_app",platform = "$COMPONENT_LOCATION/../linux_platform/export/linux_platform/linux_platform.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="linux_platform")
status = platform.build()

status = platform.build()

comp = client.get_component(name="new_app")
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

