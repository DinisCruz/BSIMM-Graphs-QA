class Docker_API

  constructor: (options)->
    @.options = options || {}
    @.port    = @.options.port || 3000

  server_Url: ()=>
    if @.in_Travis()
      return 'http://46.101.86.5'       # using digital ocean image
    else
      return 'http://localhost:3000'        # using local server (manually started)


#    if @.using_Docker_Machine()
#      'http://192.168.99.100:3000'  # having some issues with local machine
#    else
#      'http://127.0.0.1:3000'

  #using_Docker_Machine: ->
  #  docker_Files =  process.env.HOME.path_Combine('.docker/machine/machines/default')
  #  return docker_Files.folder_Exists()

  in_Travis: ->
    "/home/travis".folder_Exists()

module.exports = Docker_API