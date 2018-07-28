pragma solidity ^0.4.23; // solhint-disable-line

contract Gracious {
    /// STORAGE MAPPINGS
    /// TYPES
    /// MODIFIERS
    /// EVENTS
    function ExtendGrace (address benficiary) public returns (bool) 
    {

    }
}

contract Salvation is Gracious {
    /// STORAGE MAPPINGS
    /// TYPES
    /// MODIFIERS
    /// EVENTS
    /// FUNCTIONS
}

contract Sanctification is Gracious {

    /// STORAGE MAPPINGS
    mapping (address => NetworkMember) public network;
    
    /// TYPES
    struct NetworkMember {
        bool isGod;
        bool isSaint;
    }

    /// MODIFIERS
    modifier onlyGod() {
        require(network[msg.sender].isGod, "must be God");
        _;
    }

    modifier onlySaint() {
        require(network[msg.sender].isSaint, "must be a saint");
        _;
    }

    /// EVENTS
    event WasSanctified(address indexed beneficiary);
    
    /// FUNCTIONS
    function Sanctify () public onlyGod returns (bool) {}

}