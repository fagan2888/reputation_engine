pragma solidity ^0.4.18;

contract ReputationFactory {

    event NewReputation(uint id, uint8 rating, uint8 weighting);

    uint8[] public ratings;
    uint8[] public weightings;
    mapping (uint => address) public ratingToReviewer;
    mapping (uint => address) public ratingToReceiver;

    function createReputation(address _receiver, uint8 _rating, uint8 _weighting) public {
        uint id = ratings.push(_rating) - 1;
        weightings.push(_weighting);
        ratingToReviewer[id] = msg.sender;
        ratingToReceiver[id] = _receiver;
        emit NewReputation(id,_rating,_weighting);
    }

    function getRating(uint _reputationId) public view returns (uint8) {
        return ratings[_reputationId];
    }

    function getWeighting(uint _reputationId) public view returns (uint8) {
        return weightings[_reputationId];
    }

    function getReputationReviewer(uint _reputationId) public view returns (address) {
       return ratingToReviewer[_reputationId];
    }

    function getReputationReceiver(uint _reputationId) public view returns (address) {
       return ratingToReceiver[_reputationId];
    }

    function getReputationListSize() public view returns (uint) {
        return ratings.length;
    }
}
