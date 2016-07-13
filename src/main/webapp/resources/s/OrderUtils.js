function _OrderUtils(){

    this.deleteOrder = function(id){
        if (confirm("Are you sure?")){
            window.location = "/deleteOrder/" + id;
        }
    }

}

var OrderUtils = new _OrderUtils();