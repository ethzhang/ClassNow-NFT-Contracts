

// File: @openzeppelin/contracts/utils/math/SafeMath.sol


// OpenZeppelin Contracts (last updated v4.6.0) (utils/math/SafeMath.sol)

pragma solidity ^0.8.0;

// CAUTION
// This version of SafeMath should only be used with Solidity 0.8 or later,
// because it relies on the compiler's built in overflow checks.

/**
 * @dev Wrappers over Solidity's arithmetic operations.
 *
 * NOTE: `SafeMath` is generally not needed starting with Solidity 0.8, since the compiler
 * now has built in overflow checking.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
        uint256 c = a + b;
        if (c < a) return (false, 0);
        return (true, c);
    }
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
        if (b > a) return (false, 0);
        return (true, a - b);
    }
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, with an overflow flag.
     *
     * _Available since v3.4._
     */
    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) return (true, 0);
        uint256 c = a * b;
        if (c / a != b) return (false, 0);
        return (true, c);
    }
    }

    /**
     * @dev Returns the division of two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
        if (b == 0) return (false, 0);
        return (true, a / b);
    }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers, with a division by zero flag.
     *
     * _Available since v3.4._
     */
    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
    unchecked {
        if (b == 0) return (false, 0);
        return (true, a % b);
    }
    }

    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        return a + b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return a - b;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator.
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return a / b;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return a % b;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {trySub}.
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
    unchecked {
        require(b <= a, errorMessage);
        return a - b;
    }
    }

    /**
     * @dev Returns the integer division of two unsigned integers, reverting with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
    unchecked {
        require(b > 0, errorMessage);
        return a / b;
    }
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * reverting with custom message when dividing by zero.
     *
     * CAUTION: This function is deprecated because it requires allocating memory for the error
     * message unnecessarily. For custom revert reasons use {tryMod}.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(
        uint256 a,
        uint256 b,
        string memory errorMessage
    ) internal pure returns (uint256) {
    unchecked {
        require(b > 0, errorMessage);
        return a % b;
    }
    }
}

// File: @openzeppelin/contracts/utils/Context.sol


// OpenZeppelin Contracts v4.4.1 (utils/Context.sol)

pragma solidity ^0.8.0;

/**
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes calldata) {
        return msg.data;
    }
}

// File: @openzeppelin/contracts/access/Ownable.sol


// OpenZeppelin Contracts v4.4.1 (access/Ownable.sol)

pragma solidity ^0.8.0;


/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * By default, the owner account will be the one that deploys the contract. This
 * can later be changed with {transferOwnership}.
 *
 * This module is used through inheritance. It will make available the modifier
 * `onlyOwner`, which can be applied to your functions to restrict their use to
 * the owner.
 */
abstract contract Ownable is Context {
    address private _owner;

    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /**
     * @dev Initializes the contract setting the deployer as the initial owner.
     */
    constructor() {
        _transferOwnership(_msgSender());
    }

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() public view virtual returns (address) {
        return _owner;
    }

    /**
     * @dev Throws if called by any account other than the owner.
     */
    modifier onlyOwner() {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
        _;
    }

    /**
     * @dev Leaves the contract without owner. It will not be possible to call
     * `onlyOwner` functions anymore. Can only be called by the current owner.
     *
     * NOTE: Renouncing ownership will leave the contract without an owner,
     * thereby removing any functionality that is only available to the owner.
     */
    function renounceOwnership() public virtual onlyOwner {
        _transferOwnership(address(0));
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Can only be called by the current owner.
     */
    function transferOwnership(address newOwner) public virtual onlyOwner {
        require(newOwner != address(0), "Ownable: new owner is the zero address");
        _transferOwnership(newOwner);
    }

    /**
     * @dev Transfers ownership of the contract to a new account (`newOwner`).
     * Internal function without access restriction.
     */
    function _transferOwnership(address newOwner) internal virtual {
        address oldOwner = _owner;
        _owner = newOwner;
        emit OwnershipTransferred(oldOwner, newOwner);
    }
}

// File: contracts/EagerEmuMint.sol

pragma solidity ^0.8.0;


interface IERC20 {

    function balanceOf(address account) external view returns (uint256);

}


pragma solidity ^0.8.0;



interface IEmu {

    function totalSupply() external view returns (uint256);

    function safeMint(address to, uint256 quantity) external;

}

contract EagerEmuMint is Ownable {
    using SafeMath for uint256;

    uint256 public  MAX_SUPPLY = 5000;

    mapping(address => bool) public getOgMint;

    mapping(address => bool) public getWhileListMint;

    uint256 public whileListMintPrice = 4 * 1e6;

    uint256 public publicMintPrice = 6 * 1e6;

    uint256 public ogListCount;

    uint256 public whileListCount;

    uint256 public ogMaxMint = 1;

    uint256 public publicMaxMint = 2;

    uint256 public whileListMaxMint = 3;

    uint256 public totalOgMint;

    uint256 public totalWhileListMint;

    uint256 public totalPublicMint;

    IEmu public immutable emu;

    mapping(address => uint256) public userMintCount;

    uint256 public startTime;

    uint256 public endTime;

    mapping(address => bool) public operator;

    modifier onlyOperator() {
        require(operator[msg.sender], "Caller is not operator");
        _;
    }

    constructor(IEmu _emu, uint256 _startTime, uint256 _endTime) {
        require(_startTime > block.timestamp);
        require(_endTime > _startTime);
        emu = _emu;
        startTime = _startTime;
        endTime = _endTime;
    }


    function setMintList(address[] memory users, bool isOg, bool isAllowed) external onlyOperator {
        if(isOg) {
            for(uint256 i = 0; i< users.length; i++) {
                require(users[i] != address(0), "user invalid");
                require(getOgMint[users[i]] != isAllowed, "type invaild");
                getOgMint[users[i]] = isAllowed;
                if(isAllowed) {
                    ogListCount++;
                } else {
                    if(ogListCount > 0) {
                        ogListCount--;
                    }
                }
            }
        }else {
            for(uint256 i = 0; i< users.length; i++) {
                require(users[i] != address(0), "user invalid");
                require(getWhileListMint[users[i]] != isAllowed, "type invaild");
                getWhileListMint[users[i]] = isAllowed;
                if(isAllowed) {
                    whileListCount++;
                } else {
                    if(whileListCount > 0){
                        whileListCount--;
                    }
                }
            }
        }
    }

    function mintNftMeta(uint256 tokenQuantity) public payable returns (bool) {
        require(block.timestamp >= startTime  || getOgMint[msg.sender] || getWhileListMint[msg.sender], "Time invalid");
        require(block.timestamp <= endTime, "Time invalid");

        require(
            emu.totalSupply() + tokenQuantity <= MAX_SUPPLY,
            "Sale would exceed max supply"
        );

        uint256 mintPrice;
        uint256 mintQuota;

        if (getOgMint[msg.sender]) {
            mintQuota = ogMaxMint.sub(userMintCount[msg.sender]);
            totalOgMint++;
        } else if (getWhileListMint[msg.sender]) {
            mintPrice = whileListMintPrice;
            mintQuota = whileListMaxMint.sub(userMintCount[msg.sender]);
            totalWhileListMint++;
        } else {
            mintPrice = publicMintPrice;
            mintQuota = publicMaxMint.sub(userMintCount[msg.sender]);
            totalPublicMint++;
        }

        require(
            mintQuota >= tokenQuantity && tokenQuantity > 0,
            "Sale would exceed max balance"
        );

        require(
            tokenQuantity.mul(mintPrice) <= msg.value || getOgMint[msg.sender],
            "Not enough vs sent"
        );

        userMintCount[msg.sender] = userMintCount[msg.sender].add(tokenQuantity);

        emu.safeMint(msg.sender,tokenQuantity);

        return true;
    }


    function userMintQuota(address _user) public view returns (uint256) {
        if (getOgMint[_user]) {
            return ogMaxMint.sub(userMintCount[_user]);
        } else if (getWhileListMint[_user]) {
            return whileListMaxMint.sub(userMintCount[_user]);
        } else {
            return publicMaxMint.sub(userMintCount[_user]);
        }
    }


    function setMintPrice(uint256 _whileListMintPrice, uint256 _publicMintPrice) public onlyOperator {
        whileListMintPrice = _whileListMintPrice;
        publicMintPrice = _publicMintPrice;
    }

    function setMaxMint(uint256 _ogMaxMint, uint256 _whileListMaxMint, uint256 _publicMaxMint) public onlyOperator {
        ogMaxMint = _ogMaxMint;
        whileListMaxMint = _whileListMaxMint;
        publicMaxMint = _publicMaxMint;
    }

    function setStartTime(uint256 _startTime) external onlyOperator {
        require(_startTime > block.timestamp);
        startTime = _startTime;
    }

    function setEndTime(uint256 _endTime) external onlyOperator {
        require(_endTime > startTime);
        endTime = _endTime;
    }

    //    function setSupply(uint256 _supply) external onlyOperator {
    //        MAX_SUPPLY = _supply;
    //    }

    function withdrawOnlyOwner(address _token, address to) public onlyOwner returns(bool) {
        uint256 balance = 0;
        if (_token != address(0)) {
            balance = IERC20(_token).balanceOf(address(this));
            require(balance > 0, "Insufficient tokens");
            (bool success, bytes memory data) = _token.call(abi.encodeWithSelector(0xa9059cbb, to, balance));
            require(
                success && (data.length == 0 || abi.decode(data, (bool))),
                'Transfer failed');
        } else {
            balance = address(this).balance;
            require(balance > 0, "Insufficient balance");
            payable(to).transfer(balance);
        }
        return true;
    }

    function setOperator(address _operator, bool _allow) external onlyOwner {
        require(_operator != address(0), "Cannot be zero address");
        operator[_operator] = _allow;
    }

    receive() external payable {}
}