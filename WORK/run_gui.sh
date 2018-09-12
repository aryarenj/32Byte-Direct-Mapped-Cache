#run_ncvhdl.bash -messages -linedebug -smartorder $1  $3
run_ncelab.bash -messages -access rwc $1
run_ncsim.bash -gui $1
