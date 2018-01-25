app.directive('fbi', [function () {
    return {
            templateUrl: './public/page.html',
            replace: true,
            // transclude: true,
            restrict: 'ECA',
             scope: {},
            controller: function($scope, $element, $attrs, $transclude) {
                $scope.pagecount = $("input[name=pageCount]").val();
                $scope.page = $("input[name=page]").val();
                $scope.url = $("input[name=url]").val();
                var startpage = parseInt($scope.page)-2;
                var endpage = parseInt($scope.page)+2;
                if(startpage < 1){
                    startpage = 1;
                    endpage = 5;
                }
                if(endpage > $scope.pagecount){
                    endpage = $scope.pagecount;
                    if($scope.pagecount-4 > 0){
                        startpage = $scope.pagecount-4;
                    }else{
                        startpage = 1;
                    }
                    
                }
                var pagestr = new Array();
                for(var i=startpage; i <= endpage; i++){
//                    pagestr = pagestr+","+i;
                    if(i == $scope.page){
                        pagestr.push([i,true]);
                    }else{
                        pagestr.push([i,false]);
                    }
                    
                }
                $scope.pagearr = pagestr;
                console.log(pagestr);
                $scope.lastpage = (($scope.page>1)?$scope.page-1:1);
                $scope.nextpage = (($scope.page>=$scope.pagecount)?$scope.pagecount:parseInt($scope.page)+1);
            },
            compile: function compile(tElement, tAttrs, transclude) {
                    
                    return function postLink(scope, iElement, iAttrs, controller) {
                        
                    }
            },
    };
}])
