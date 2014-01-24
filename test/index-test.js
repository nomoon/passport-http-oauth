var vows = require('vows');
var assert = require('assert');
var util = require('util');
var oauth = require('passport-http-oauth-1leg');


vows.describe('passport-http-oauth-1leg').addBatch({

  'should report a version': function () {
    assert.isString(oauth.version);
  },

  'should export strategies': function () {
    assert.isFunction(oauth.TokenStrategy);
  }

}).export(module);
