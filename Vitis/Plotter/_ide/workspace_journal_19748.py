# 2025-11-28T13:51:47.756420200
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

status = client.add_platform_repos(platform=["c:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vivado"])

status = client.add_platform_repos(platform=["c:\Users\yoric\OneDrive\Documenten\GitHub\KBSCE-Plotter\Vivado"])

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "plotter_hw",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="plotter_component",platform = "$COMPONENT_LOCATION/../plotter_hw/export/plotter_hw/plotter_hw.xpfm",domain = "standalone_microblaze_riscv_0")

vitis.dispose()

