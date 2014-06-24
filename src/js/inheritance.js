/* Simple JavaScript Inheritance
 * By John Resig http://ejohn.org/
 * MIT Licensed.
 */
// Inspired by base2 and Prototype
// http://ejohn.org/blog/simple-javascript-inheritance/
// Modifications:
//  - Works in strict mode.
//  - A function extendObject was added, to give |new (A.extend({...})| a nice syntax.
(function(){
  "use strict";
  var initializing = false, fnTest = /xyz/.test(function(){xyz;}) ? /\b_super\b/ : /.*/,
      extend, extendObject;

  // The base Class implementation (does nothing)
  window.Class = function(){};

  Class.extendObject = extendObject = function(prop) {
    return new (this.extend(prop));
  };

  // Create a new Class that inherits from this class
  Class.extend = extend = function(prop) {
    var _super = this.prototype;

    // Instantiate a base class (but only create the instance,
    // don't run the init constructor)
    initializing = true;
    var prototype = new this();
    initializing = false;

    // Copy the properties over onto the new prototype
    for (var name in prop) {
      // Check if we're overwriting an existing function
      prototype[name] = typeof prop[name] == "function" &&
        typeof _super[name] == "function" && fnTest.test(prop[name]) ?
        (function(name, fn){
          return function() {
            if ("_super" in this) {
              // There is an old _super (this function is probably called
              // from a derived class). Make a copy so that we can restore
              // it later.
              var tmp = this._super;

              // Add a new ._super() method that is the same method
              // but on the super-class
              this._super = _super[name];

              try {
                return fn.apply(this, arguments);
              }
              finally {
                this._super = tmp;
              }
            }
            else {
              this._super = _super[name];
              try {
                return fn.apply(this, arguments);
              }
              finally {
                delete this._super;
              }
            }
          };
        })(name, prop[name]) :
        prop[name];
    }

    // The dummy class constructor
    function Class() {
      // All construction is actually done in the init method
      if ( !initializing && this.init )
        this.init.apply(this, arguments);
    }

    // Populate our constructed prototype object
    Class.prototype = prototype;

    // Enforce the constructor to be what we expect
    Class.prototype.constructor = Class;

    // And make this class extendable
    Class.extend = extend;
    Class.extendObject = extendObject;

    return Class;
  };
})();
