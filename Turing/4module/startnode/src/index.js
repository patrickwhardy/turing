console.log("whattup");
 function Ready() {
   this.ready = true;
 }

 Ready.prototype.noImNot = function() {
   this.ready = false;
 };
