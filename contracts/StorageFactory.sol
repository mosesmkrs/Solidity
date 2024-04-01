// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function CreateSimpleStorageContract() public {
       SimpleStorage simpleStorage = new SimpleStorage();
       simpleStorageArray.push(simpleStorage);
    }

    function SimpleFunctionStore(uint256 _simpleStoreIndex, uint256 _simpleStoreNumber) public {
        simpleStorageArray[_simpleStoreIndex].store(_simpleStoreNumber);
    }

    function SimpleFunctionGet(uint256 _simpleStoreIndex) public view  returns(uint256) {
        return simpleStorageArray[_simpleStoreIndex].retrieve();
    }
}