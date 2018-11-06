# Reputation Engine

## Overview
This project is a functional prototype of a blockchain-based reputation engine allowing users to give and receive reputational reviews based on public key personas. These reputational reviews are based on two factors: a rating of the trustworthiness of the user and a weighting that user's judgment. For example, one user maybe completely trustworthy, but have poor judgment of how trustworthy others are. In that case, the user would receive a high rating, but a low weighting. The data generated as a side-effect of these reviews can be used to create a graph that can be traversed to arrive at a reputation.

## Setup

Clone the project:

    $ git clone git@github.com:jonathanmann/reputation_engine.git

Install the dependencies:
    
    $ cd reputation_engine
    $ npm install

## Interaction

Start Truffle:

    $ truffle dev

Deploy contract:

    truffle(develop)> migrate --reset
    truffle(develop)> compile

Something like this will appear:

    Running migration: 2_deploy_contracts.js
      ReputationFactory: 0x82d50ad3c1091866e258f...
    Saving successful migration to network...
      ... 0x68410036257ab41a3a6be1cd61faa...
    Saving artifacts...

Grab the address that appears after ReputationFactory and use it to instantiate a new smartcontract alliased as "c":

    truffle(develop)> c = ReputationFactory.at('0x82d50ad3c1091866e258fd0f1a7cc9674609d254')

## Notes
A user could create as many personas as desired, but given the cost of building a reputation, each user would likely have only a single primary persona and reserve secondary personas for activities requiring elevated privacy.

