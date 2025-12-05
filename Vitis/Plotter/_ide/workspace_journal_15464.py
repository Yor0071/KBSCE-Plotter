# 2025-12-05T15:18:30.219320300
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="Plotter")
status = platform.build()

comp = client.get_component(name="app")
comp.build()

status = comp.clean()

status = platform.build()

comp.build()

client.delete_component(name="Plotter")

client.delete_component(name="Plotter")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

vitis.dispose()

