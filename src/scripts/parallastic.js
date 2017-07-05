Object.defineProperty(exports, "__esModule", {
  value: true
});
var parallastic = exports.parallastic = function parallastic() {
  var scrollable = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : window;

  var listeners = [];
  var eventTarget = scrollable;
  var propertyProvider = scrollable === window ? document.body : scrollable;

  var handleScroll = function handleScroll(e) {
    var toRemove = [];
    // Give every listener a chance
    var _iteratorNormalCompletion = true;
    var _didIteratorError = false;
    var _iteratorError = undefined;

    try {
      for (var _iterator = listeners[Symbol.iterator](), _step; !(_iteratorNormalCompletion = (_step = _iterator.next()).done); _iteratorNormalCompletion = true) {
        var listener = _step.value;

        var ret = listener(e);
        if (ret) toRemove.push(listener);
      }
      // Remove the ones which reported they are done
      // (Not removed before because can't remove during for on same array)
    } catch (err) {
      _didIteratorError = true;
      _iteratorError = err;
    } finally {
      try {
        if (!_iteratorNormalCompletion && _iterator.return) {
          _iterator.return();
        }
      } finally {
        if (_didIteratorError) {
          throw _iteratorError;
        }
      }
    }

    var _iteratorNormalCompletion2 = true;
    var _didIteratorError2 = false;
    var _iteratorError2 = undefined;

    try {
      for (var _iterator2 = toRemove[Symbol.iterator](), _step2; !(_iteratorNormalCompletion2 = (_step2 = _iterator2.next()).done); _iteratorNormalCompletion2 = true) {
        var _listener = _step2.value;

        removeListener(_listener);
      }
    } catch (err) {
      _didIteratorError2 = true;
      _iteratorError2 = err;
    } finally {
      try {
        if (!_iteratorNormalCompletion2 && _iterator2.return) {
          _iterator2.return();
        }
      } finally {
        if (_didIteratorError2) {
          throw _iteratorError2;
        }
      }
    }
  };

  var addListener = function addListener(func) {
    listeners.push(func);
    if (listeners.length === 1) {
      eventTarget.addEventListener('scroll', handleScroll);
    }
    return func;
  };

  var removeListener = function removeListener(func) {
    var idx = listeners.indexOf(func);
    if (idx >= 0) listeners.splice(idx, 1);
    if (listeners.length === 0) {
      eventTarget.removeEventListener('scroll', handleScroll);
    }
    return func;
  };

  var addToggler = function addToggler(target, className, position) {
    // Add the listener and return it so it can be removed
    return addListener(function (e) {
      var marker = target.offsetTop;
      var percent = 1 + (propertyProvider.scrollTop - marker) / propertyProvider.clientHeight;
      if (percent >= position) {
        target.classList.add(className);
        return true;
      }
    });
  };

  var addProportional = function addProportional(target, yStart, yEnd, property, propertyStart, propertyEnd) {
    var opts = arguments.length > 6 && arguments[6] !== undefined ? arguments[6] : {};

    return addListener(function (e) {
      var thisYStart = yStart;
      var thisYEnd = yEnd;
      if (opts.units === '%') {
        thisYStart *= propertyProvider.clientHeight / 100;
        thisYEnd *= propertyProvider.clientHeight / 100;
      }
      var percent = (propertyProvider.scrollTop - thisYStart) / (thisYEnd - thisYStart);
      if (percent < 0) percent = 0;
      if (percent > 1) percent = 1;
      var value = propertyStart + percent * (propertyEnd - propertyStart);
      if (opts.prefix) value = opts.prefix + value;
      if (opts.suffix) value += opts.suffix;
      target.style[property] = value;
    });
  };

  return {
    addToggler: addToggler,
    addProportional: addProportional,
    removeListener: removeListener
  };
};

exports.default = parallastic;
