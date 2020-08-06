pragma solidity >=0.4.21 <0.7.0;

contract Election {
    // Model a candidate

    struct Candidate {
      uint id;
      string name;
      uint voteCount;
    }

    mapping(address => bool) public voters;
    mapping(uint => Candidate) public candidates;
    // Store a candidates count
    uint public candidatesCount;

    // voted event
    event votedEvent (
        uint indexed _candidateId
    );
    // Constructor
    constructor() public {
      addCandidate("Candidate 1");
      addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private {
      candidatesCount ++;
      candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

    function vote (uint _candidateId) public {
      // require that they have not voted before
      require(!voters[msg.sender]);
      // require that they are voting for a valid candidate
      require(_candidateId > 0 && _candidateId <= candidatesCount);
      // record that voter has voted
      voters[msg.sender] = true;
      // add vote to candidate
      candidates[_candidateId].voteCount++;
       // trigger voted event
      emit votedEvent(_candidateId);
    }
}
