/**
 * Created by sebastian on 21/07/16.
 */

app.controller('rutinas',['$scope', '$location','RutinasRest',function ($scope, $location , RutinasRest) {
    $scope.updateRutinas = function() {
        $scope.rutinas = RutinasRest.query();
    };

    $scope.showRutina = function (id) {
        //$location.url(window.location.host+'/rutinaespecifica/').search({id:id});
        window.location.href = "/rutinaespecifica?id=" + id;
    };
    
    $scope.updateRutinas();

}]).controller('rutinaEspecifica',['$scope', '$location','RutinasRest',function ($scope, $location , RutinasRest){

    $scope.updateRutina = function(id){
        RutinasRest.query(function (data) {
            $.each(data,function (index,value) {
                if(value.id == id){
                    $scope.rutina = value;
                    return;
                }
            });
        });
    };

    $scope.return = function () {
        $location.path('/');
    };

    $scope.updateRutina(getUrlParameter('id'));

}]).controller('addrutina',['$scope', '$location','RutinasRest',function ($scope, $location , RutinasRest){
    $scope.rutinas = {};
    $scope.addRutina = function(musculos, descripcion, nombre, idfileAdjunto){
        if(musculos && descripcion){
            RutinasRest.save({descripcion:descripcion,musculo:musculos, nombre:nombre}, function(data){
                if(!data.$resolved){
                    alert("Ocurrio un error en el proceso, intentalo de nuevo.");
                }
                $scope.rutinas = {};
            });
        }
    };

}]).controller('foro',['$scope','ForoRest', 'ComentariosRest',function ($scope,ForoRest,ComentariosRest) {
    $scope.comentarios = [];
    $scope.idForComment = null;

    $scope.updatePublicacionesForo = function(){
        $scope.publicaciones = ForoRest.query();
    };
    
    $scope.showWindowforPublic = function () {
        $('#modalTopublicar').modal('show');
    };

    $scope.showWindowComment = function(id){
        $scope.idForComment = id;
        $('#modalToComentar').modal('show');
    };
    
    $scope.publicarInforo = function(nombre,text){
        ForoRest.save({nombre: nombre, texto:text, tags:"ninguno"},function (data) {
            $('#modalTopublicar').modal('hide');
            $scope.updatePublicacionesForo();
        })
    };

    $scope.comentarPublicacion = function(nombre, comentario){
        ComentariosRest.save({publicacion_id: String($scope.idForComment), nombre:nombre, comentario:comentario},function(data){
            console.log(data);
        });
    };

    $scope.verRespuestas = function (id, index) {
          ComentariosRest.query({id:id}, function (data) {
                $scope.comentarios[index] = data;
          });
        
    };

    $scope.updatePublicacionesForo();

}]).controller('adminforo',['$scope','ForoRest',function ($scope,ForoRest){

    $scope.updateForo = function () {
        $scope.foro = ForoRest.query();
    };

    $scope.eliminarPublicacion = function (id) {
        ForoRest.delete({id:id},function (data) {
            $scope.updateForo();
        });
    };

    $scope.updateForo();
}]);

/*
app.controller('',['$scope', '$location','ArticleRest',function ($scope, $location , ArticleRest) {
        $scope.publicacion = {}; 
    
        $scope.publicar = function () {
            console.log($scope.publicacion.text);
            console.log($scope.publicacion.title);
            
            ArticleRest.save({text: $scope.publicacion.text,title:$scope.publicacion.title},function (data) {
                console.log(data);
            });

            $scope.publicacion = {}
        };
    
        $scope.publicaciones = function(){
            $location.path('/');
        };
    
    }])
    .controller('publicacionesController',['$scope', '$location','ArticleRest',function ($scope, $location , ArticleRest){
       
        $scope.update = function () {
            $scope.publicaciones = ArticleRest.query();
        };
        
        $scope.publicar =function () {
            $location.path('/publicar');
        };

        $scope.eliminar = function (id) {
            ArticleRest.delete({id:id}, function (data) {
                $scope.update();
            });
        };

        $scope.editar = function (publicacion) {
            ArticleRest.update({id:publicacion.id},{text:publicacion.text,title:publicacion.title},function(data){

            });
        };
        
        $scope.update();
    }]);
    */