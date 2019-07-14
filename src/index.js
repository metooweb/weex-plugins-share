/* globals alert */
const share = {
  show() {
      alert("Module share is created sucessfully ")
  }
};


const meta = {
   share: [{
    lowerCamelCaseName: 'show',
    args: []
  }]
};

function init(weex) {
  weex.registerModule('share', share, meta);
}

export default {
  init:init
}