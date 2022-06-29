// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract sqrt_contract {

    //Calculate the binary log of a number
    function binaryLog (uint256 _a) internal pure returns(uint256) {
        uint res;
        for(uint256 i=1000; i>1; i = i/2){
            if(_a>=2){
                res += i;
                _a = _a/2;
            }
            _a = _a * _a;
        }
        return res;
    }

    //calculate the square root of a number with newton-raphson method
    function sqrt (uint _a) internal pure returns(uint256) {
        if(_a == 0) return 0;

        uint256 y = 2 ** (binaryLog(_a)/2);
        for(uint256 j=1; j<=6; j++){
            y = (y * y + _a)/(2*y);
        }
        return y;
    }
}