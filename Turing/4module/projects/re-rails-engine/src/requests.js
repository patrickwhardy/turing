var merchants;

class Requests {

  getMerchants(){
    $.ajax({
      method: "GET",
      url: "https://immense-falls-50057.herokuapp.com/api/v1/merchants.json",
      dataType: "JSON",
      success: this.merchants = data
    });
  }
}

export default Requests;
