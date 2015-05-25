angular.module("ui.bootstrap.tpls-custom", ["template/formCarousel/formCarousel.html", "template/formCarousel/formSlide.html"]);

//Form Wizard
angular.module("template/formCarousel/formCarousel.html", []).run(["$templateCache", function ($templateCache) {
    $templateCache.put("template/formCarousel/formCarousel.html",
      "<div ng-mouseenter=\"pause()\" ng-mouseleave=\"play()\" class=\"carousel\">\n" +
      "    <ol class=\"carousel-indicators\" ng-show=\"slides().length > 1\">\n" +
      "        <li ng-repeat=\"slide in slides()\" ng-class=\"{active: isActive(slide)}\" ng-click=\"select(slide)\"></li>\n" +
      "    </ol>\n" +
      "    <div class=\"carousel-inner\" ng-transclude></div>\n" +
      "    <a ng-click=\"prev()\" class=\"carousel-control left\" ng-show=\"slides().length > 1\">&lsaquo;</a>\n" +
      "    <a ng-click=\"next()\" class=\"carousel-control right\" ng-show=\"slides().length > 1\">&rsaquo;</a>\n" +
      "</div>\n" +
      "");
}]);
//Form
angular.module("template/formCarousel/formSlide.html", []).run(["$templateCache", function ($templateCache) {
    $templateCache.put("template/formCarousel/formSlide.html",
      "<div ng-class=\"{\n" +
      "    'active': leaving || (active && !entering),\n" +
      "    'prev': (next || active) && direction=='prev',\n" +
      "    'next': (next || active) && direction=='next',\n" +
      "    'right': direction=='prev',\n" +
      "    'left': direction=='next'\n" +
      "  }\" class=\"item\" ng-transclude></div>\n" +
      "");
}]);