# 2025-12-10T09:14:23.084508
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="linux_platform")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa")

domain = platform.get_domain(name="standalone_microblaze_riscv_0")

status = domain.regenerate()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "platform-12-10-A",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

client.delete_component(name="platform-12-10-A")

comp = client.get_component(name="app")
comp.build()

status = platform.build()

comp = client.get_component(name="new_app")
comp.build()

