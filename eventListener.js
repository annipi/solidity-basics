const Web3 = require('web3');
const EventContract = require('./build/contracts/EventExample.json');

const wsProvider = new Web3.providers.WebsocketProvider('ws://localhost:8545');
const web3 = new Web3(wsProvider);

const eventInstance = new web3.eth.Contract(EventContract.abi, '0xCfEB869F69431e42cdB54A4F4f105C19C080A601');

console.log("Subscribing Supplied events");
const options = {
  fromBlock: 'latest',
};
eventInstance.events.Supplied(options, function(error, e){
  if(!error){
    console.log(e);
  }else{
    console.error(error);
  }
});

