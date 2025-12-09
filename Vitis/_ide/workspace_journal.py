# 2025-12-09T11:22:05.924008
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

platform = client.get_component(name="linux")
status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa")

domain = platform.get_domain(name="standalone_microblaze_riscv_0")

status = domain.regenerate()

