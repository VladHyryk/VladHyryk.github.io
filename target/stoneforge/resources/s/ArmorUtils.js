function _ArmorUtils(){

    this.deleteBodyArmor = function(id){
        if (confirm("Are you sure?")){
            window.location = "/deleteBodyArmor/" + id;
        }
    }

}

var ArmorUtils = new _ArmorUtils();