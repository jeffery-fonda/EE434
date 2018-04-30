set link_library {ng45.db}
set target_library {ng45.db}

read_file -format verilog {and10.v}
compile -exact_map
write -format verilog -output and10_syn.v

