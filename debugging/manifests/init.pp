class debugging {

  $timestamp = generate('/usr/bin/date', '+%H:%M:%S')
  notify {"Agent run starting at ${timestamp}": }

}
