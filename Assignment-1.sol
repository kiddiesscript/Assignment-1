pragma solidity ^0.5.17;
contract Tshirts{
   uint id;
   uint purchaseId;
  struct Beach {
    string name;
    address addr;
    uint bankGuaraantee;
    bool bgPaid;
    }
    struct product{
       string productId;
       uint qty;
       uint price;
       bool isactive;
       }
       struct ordersPlaced {
       string productId;
       uint purchaseId;
       address orderedBy;
          }
       struct orders{
       string productId;
       string orderStatus;
       uint purchaseId;
       string shipmentStatus;
           }  
           
mapping(address=> Beach) public sellers;
mapping (string => product) products;
mapping (address=> ordersPlaced[]) sellerOrders;
mapping (address=>orders[]) userOrders;
product[] public allProducts;

function addProduct(string memory _productId, uint _qty, uint _price) public {
     
      product memory newproduct = product(_productId,_qty, _price,true);  
      products[_productId].productId= _productId;
      products[_productId].qty= _qty;
      products[_productId].price= _price;  
      allProducts.push(newproduct);
         
   }
   function buyProduct(string memory _productId)  public payable {
       
          }
}
