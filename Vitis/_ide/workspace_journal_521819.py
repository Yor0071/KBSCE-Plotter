# 2025-12-12T11:04:09.811023
import vitis

client = vitis.create_client()
client.set_workspace(path="Vitis")

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-P",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-P")
status = platform.build()

comp = client.create_app_component(name="app-P",platform = "$COMPONENT_LOCATION/../lnx-P/export/lnx-P/lnx-P.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-P")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-Q",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-Q")
status = platform.build()

comp = client.create_app_component(name="app-Q",platform = "$COMPONENT_LOCATION/../lnx-Q/export/lnx-Q/lnx-Q.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-Q")
comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-R",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-R")
status = platform.build()

comp = client.create_app_component(name="app-R",platform = "$COMPONENT_LOCATION/../lnx-R/export/lnx-R/lnx-R.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-R")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-S",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-S")
status = platform.build()

comp = client.create_app_component(name="app-S",platform = "$COMPONENT_LOCATION/../lnx-S/export/lnx-S/lnx-S.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-S")
comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-T",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-T")
status = platform.build()

comp = client.create_app_component(name="app-T",platform = "$COMPONENT_LOCATION/../lnx-T/export/lnx-T/lnx-T.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-T")
comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "app-U",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="app-U")
status = platform.build()

comp = client.create_app_component(name="appapp-U",platform = "$COMPONENT_LOCATION/../app-U/export/app-U/app-U.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="appapp-U")
comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-V",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-V")
status = platform.build()

comp = client.create_app_component(name="app-V",platform = "$COMPONENT_LOCATION/../lnx-V/export/lnx-V/lnx-V.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="app-V")
comp.build()

status = platform.build()

comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "app-W",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="app-W")
status = platform.build()

comp = client.create_app_component(name="appapp-W",platform = "$COMPONENT_LOCATION/../app-W/export/app-W/app-W.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="appapp-W")
comp.build()

advanced_options = client.create_advanced_options_dict(dt_overlay="0")

platform = client.create_platform_component(name = "lnx-X",hw_design = "$COMPONENT_LOCATION/../../Vivado/NexysA7_Top.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",generate_dtb = False,advanced_options = advanced_options,compiler = "gcc")

platform = client.get_component(name="lnx-X")
status = platform.build()

comp = client.create_app_component(name="app-X",platform = "$COMPONENT_LOCATION/../lnx-X/export/lnx-X/lnx-X.xpfm",domain = "standalone_microblaze_riscv_0")

vitis.dispose()

