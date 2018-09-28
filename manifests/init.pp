# This class manages yum repos.
#
# @summary Manages yum repos.
#
# @example
#   class { 'yum':
#     repos => {
#       repo_title => {
#         ..,
#       }
#     }
#   }
#
# @param repos A hash with attributes for the yumrepo resource
#              (https://puppet.com/docs/puppet/5.3/types/yumrepo.html).
#
class yum (
  Hash $repos,
) {
  $repos.each |$repo_title, $repo_opts| {
    yumrepo { $repo_title:
      * => $repo_opts,
    }
  }
}
