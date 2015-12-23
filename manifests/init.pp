# = Class: subversion_config
#
class subversion_config(
    $create_repos = undef,
    $present      = true,
    ) {
    if ($present == true){
        include subversion
        unless ($create_repos == undef){
            validate_hash($create_repos)
            create_resources(subversion::svnrepo, $create_repos)
        }
    }
}
