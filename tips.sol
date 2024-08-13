// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract tips {
    address owner;
    Waiteress[] waitress;
    

    constructor(){
        owner = msg.sender;

    }

    //1. put fund in smart contract

    function addtips() payable public {

    }

    //2. view balance

    function viewtips() public view returns(uint){
        return address(this).balance;
    }

    //3. add structure waitress

    struct Waiteress {
        address payable walletAddress;
        string name;
    }

    //3.2 add waitress
    function addWaitress(address payable walletAddress,string memory name) public {
        bool waitressExist = false;

        if(waitress.length >=1){
            for(uint i=0; i<waitress.length; i++)
                if(waitress[i].walletAddress == walletAddress){
                 waitressExist = true;
                }

            }
            if(waitressExist==false){
                waitress.push(Waiteress(walletAddress,name));
            }

    }

    //4. remove user

    //5. view user
    function viewWaitrass() public view returns (Waiteress[] memory){
        return waitress;
    }

    //6. distribute tips
}