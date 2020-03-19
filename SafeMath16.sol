pragma solidity ^0.5.0;

library SafeMath16 {

    function add(uint16 a, uint16 b) internal pure returns (uint16 c) {
        c = a + b;
        require(c >= a);
    }

    function sub(uint16 a, uint16 b) internal pure returns (uint16 c) {
        require(b <= a);
        c = a - b;
    }

    function mul(uint16 a, uint16 b) internal pure returns (uint16 c) {
        c = a * b;
        require(a == 0 || c / a == b);
    }

    function div(uint16 a, uint16 b) internal pure returns (uint16 c) {
        require(b > 0);
        c = a / b;
    }
}