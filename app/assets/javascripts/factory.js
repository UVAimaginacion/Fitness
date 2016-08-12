/**
 * Created by sebastian on 25/07/16.
 */
app.factory('RutinasRest',function ($resource) {
    
    return $resource("http://localhost:3000/rutinas/:id",{id:"@id"},{'update':{method:'PUT'}});
    
}).factory('ForoRest',function($resource){

    return $resource("http://localhost:3000/publicaciones/:id",{id:"@id"},{'update':{method:'PUT'}});

}).factory('ComentariosRest',function($resource){

    return $resource("http://localhost:3000/comentarios/:id",{id:"@id"},{'update':{method:'PUT'}});

});