# == gamecrate: ./sites/gamecrate/manifests/init.pp
#
# Drupal sites are configured by declaring an undine::drupal_codebase
# resource, followed by any number of undine::drupal_site resources that
# require it. This allows for configuration of both single and multisite
# installations of Drupal.
#
# To use this as the basis for your Drupal site, first locate the "sites"
# directory of your Undine install, then copy the ./examples/site_example
# directory into it.
#
# Finally, add the line "include sites_example" to the file
# /path/to/undine/manifests/site.pp to tell Undine to configure your site.
#
# The next time you run either "vagrant up" (if you haven't run it yet) or
# "vagrant provision" (if you have), your changes will be reflected.
#
class gamecrate {
  undine_apache::virtualhost { 'local.gamecrate-guest.dev':
    document_root => '/var/www/gamecrate/',
  }
}
