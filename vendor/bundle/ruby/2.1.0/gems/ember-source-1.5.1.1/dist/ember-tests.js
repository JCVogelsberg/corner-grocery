/*!
 * @overview  Ember - JavaScript Application Framework
 * @copyright Copyright 2011-2014 Tilde Inc. and contributors
 *            Portions Copyright 2006-2011 Strobe Inc.
 *            Portions Copyright 2008-2011 Apple Inc. All rights reserved.
 * @license   Licensed under MIT license
 *            See https://raw.github.com/emberjs/ember.js/master/LICENSE
 * @version   1.5.1
 */


var JSHINTRC = {
    "predef": [
        "QUnit",
        "define",
        "console",
        "Ember",
        "DS",
        "Handlebars",
        "Metamorph",
        "RSVP",
        "require",
        "requireModule",
        "equal",
        "notEqual",
        "notStrictEqual",
        "test",
        "asyncTest",
        "testBoth",
        "testWithDefault",
        "raises",
        "throws",
        "deepEqual",
        "start",
        "stop",
        "ok",
        "strictEqual",
        "module",
        "expect",
        "minispade",
        "expectAssertion",
        "expectDeprecation",
        "expectNoDeprecation",
        "ignoreAssertion",
        "ignoreDeprecation",

        // A safe subset of "browser:true":
        "window", "location", "document", "XMLSerializer",
        "setTimeout", "clearTimeout", "setInterval", "clearInterval"
    ],

    "node" : false,
    "browser" : false,

    "boss" : true,
    "curly": false,
    "debug": false,
    "devel": false,
    "eqeqeq": true,
    "evil": true,
    "forin": false,
    "immed": false,
    "laxbreak": false,
    "newcap": true,
    "noarg": true,
    "noempty": false,
    "nonew": false,
    "nomen": false,
    "onevar": false,
    "plusplus": false,
    "regexp": false,
    "undef": true,
    "sub": true,
    "strict": false,
    "white": false,
    "eqnull": true
}
;
