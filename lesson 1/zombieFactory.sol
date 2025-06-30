Lesson #1 create a zombie

pragma solidity >=0.5.0 <0.6.0;
evetn NewZombie(uint zombieId, string name,uint dna )
contract ZombieFactory {

    // declare our event here

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string memory _name, uint _dna) private {
        zombies.push(Zombie(_name, _dna));
emit NewZombie(zombieId,_name,_dna)
        zombieToOwner[id] =sender        
        ownerZombieCount[sender]+=1
    }

    function _generateRandomDna(string memory _str) private view returns (uint) {
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus;
    }

    function createRandomZombie(string memory _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}
