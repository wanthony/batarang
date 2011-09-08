(function() {
  var Batarang;
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  Batarang = (function() {
    __extends(Batarang, Batman.App);
    function Batarang() {
      Batarang.__super__.constructor.apply(this, arguments);
    }
    Batarang.set('mission', 'fight crime');
    Batarang.global(true);
    Batarang.controller('app', 'tasks');
    Batarang.root('app#index');
    Batarang.resources('tasks');
    return Batarang;
  })();
}).call(this);
