// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

interface IZFStableSwap {
    function token() external view returns (address);

    function balances(uint256 i) external view returns (uint256);

    function N_COINS() external view returns (uint256);

    function RATES(uint256 i) external view returns (uint256);

    function coins(uint256 i) external view returns (address);

    function PRECISION_MUL(uint256 i) external view returns (uint256);

    function fee() external view returns (uint256);

    function protocol_fee() external view returns (uint256);

    function A() external view returns (uint256);

    function get_D_mem(uint256[2] memory _balances, uint256 amp) external view returns (uint256);

    function get_y(
        uint256 i,
        uint256 j,
        uint256 x,
        uint256[2] memory xp_
    ) external view returns (uint256);

    function calc_withdraw_one_coin(uint256 _token_amount, uint256 i) external view returns (uint256);
}
