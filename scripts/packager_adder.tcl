# scripts/package_adder.tcl

# Crea un proyecto temporal
create_project adder_packaged ./adder_packaged -part xc7z020clg484-1

# Añade tus fuentes
add_files ./src/adder.vhdl

# Empaqueta la IP
ipx::package_project -root_dir ./packaged_ip/adder_v1_0 -vendor lucasjimenezc.com -library user -taxonomy /UserIP
ipx::save_core
ipx::check_integrity [ipx::current_core]
ipx::create_xgui_files [ipx::current_core]

close_project
