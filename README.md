# SimpleStorage Solidity Contract

[`SimpleStorage`](simpleStorage.sol) is a basic smart contract written in Solidity for storing and retrieving a favorite number, as well as managing a list of people with their phone numbers.

## Features

- **Store a Number:** Save your favorite number on the blockchain.
- **Retrieve a Number:** Read the stored favorite number.
- **Add People:** Add a person’s full name and phone number to a list.
- **Lookup Phone Number:** Retrieve a phone number by full name.

## Contract Details

### State Variables

- `myFavoriteNumber` (`uint256`): Public variable to store a number.
- `listOfPeople` (`Person[]`): Array of `Person` structs.
- `fullNameToPhoneNumber` (`mapping`): Maps a full name to a phone number.

### Structs

- `Person`: Contains `phoneNumber` (`uint256`) and `fullName` (`string`).

### Functions

- `store(uint256 _myFavoriteNumber)`: Stores a new favorite number.
- `retrieve()`: Returns the stored favorite number.
- `addPerson(string _fullName, uint256 _phoneNumber)`: Adds a new person to the list and mapping.

## Usage

1. **Deploy the contract** to your preferred Ethereum network.
2. **Call `store`** to set your favorite number.
3. **Call `retrieve`** to get the stored number.
4. **Call `addPerson`** with a full name and phone number to add someone.
5. **Access `listOfPeople`** or use the mapping to look up phone numbers by name.

## License

MIT
