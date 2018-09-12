#run_ncvhdl.bash -messages -linedebug -smartorder $1  $3
run_ncelab.bash -messages -access rwc $4
run_ncsim.bash -input run.ncsim -messages $4
