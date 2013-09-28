class nefos::users {
  # Always ensure we got a few common groups
  $common_groups = [ 'sudo', 'cdrom', 'audio', 'video' ]
  @account::group { $common_groups: }
  realize Account::Group[$common_groups]
}
