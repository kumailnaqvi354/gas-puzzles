// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract OptimizedArraySort {
    function sortArray(uint256[] calldata data)
        external
        pure
        returns (uint256[] memory _data)
    {
        // Create 'working' copy
        _data = data;
        uint256 j;
        uint256 i;
        for (i = 0; i < _data.length; i++) {
            for (j = i + 1; j < _data.length; ) {
                if (_data[i] > _data[j]) {
                    unchecked {
                        (_data[i], _data[j]) = (_data[j], _data[i]);
                    }
                }
                unchecked {
                    j++;
                }
            }
        }
    }

    // function sortArray(uint256[] calldata data)
    //     external
    //     pure
    //     returns (uint256[] memory _data)
    // {
    //     // Create 'working' copy
    //     _data = data;

    //     uint256 j;
    //     for (uint256 i = 0; i < data.length; ) {
    //         for (j = i + 1; j < data.length; ) {
    //             if (data[i] > data[j]) {
    //                 (_data[i], _data[j]) = (_data[j], _data[i]);
    //             }
    //             unchecked {
    //                 j++;
    //             }
    //         }
    //         unchecked {
    //             i++;
    //         }
    //     }
    // }
}
