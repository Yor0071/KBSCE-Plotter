# 2025-12-10T14:03:56.301225700
import vitis

client = vitis.create_client()
client.set_workspace(path="Plotter")

platform = client.get_component(name="Platform")
status = platform.build()

comp = client.get_component(name="Plott")
comp.build()

comp = client.clone_component(name="Plott",new_name="Plot")

client.delete_component(name="Platform")

client.delete_component(name="Platform")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top3.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

status = platform.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform2",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top4.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plot2",platform = "$COMPONENT_LOCATION/../Platform2/export/Platform2/Platform2.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Platform2")
status = platform.build()

status = platform.build()

comp = client.get_component(name="Plot2")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top5.xsa")

status = platform.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "Platform3",hw_design = "$COMPONENT_LOCATION/../../../Vivado/NexysA7_Top5.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

comp = client.create_app_component(name="Plot3",platform = "$COMPONENT_LOCATION/../Platform3/export/Platform3/Platform3.xpfm",domain = "standalone_microblaze_riscv_0")

platform = client.get_component(name="Platform3")
status = platform.build()

comp = client.get_component(name="Plot3")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

platform = client.get_component(name="Platform")
status = platform.build()

comp = client.get_component(name="Plott")
comp.build()

platform = client.get_component(name="Platform3")
status = platform.build()

comp = client.get_component(name="Plot3")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

client.delete_component(name="Plot2")

client.delete_component(name="Plott")

client.delete_component(name="componentName")

client.delete_component(name="Platform")

client.delete_component(name="Platform2")

client.delete_component(name="Platform2")

