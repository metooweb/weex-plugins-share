import Vue from 'vue';

import weex from 'weex-vue-render';

import Share from '../src/index';

weex.init(Vue);

weex.install(Share)

const App = require('./index.vue');
App.el = '#root';
new Vue(App);
