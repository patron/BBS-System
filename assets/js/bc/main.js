var contractABI =
    [
        {
            "anonymous": false,
            "inputs": [
                {
                    "indexed": true,
                    "name": "owner",
                    "type": "address"
                },
                {
                    "indexed": true,
                    "name": "spender",
                    "type": "address"
                },
                {
                    "indexed": false,
                    "name": "value",
                    "type": "uint256"
                }
            ],
            "name": "Approval",
            "type": "event"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_spender",
                    "type": "address"
                },
                {
                    "name": "_value",
                    "type": "uint256"
                }
            ],
            "name": "approve",
            "outputs": [
                {
                    "name": "",
                    "type": "bool"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_value",
                    "type": "uint256"
                }
            ],
            "name": "burn",
            "outputs": [],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_from",
                    "type": "address"
                },
                {
                    "name": "_value",
                    "type": "uint256"
                }
            ],
            "name": "burnFrom",
            "outputs": [],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_spender",
                    "type": "address"
                },
                {
                    "name": "_subtractedValue",
                    "type": "uint256"
                }
            ],
            "name": "decreaseApproval",
            "outputs": [
                {
                    "name": "",
                    "type": "bool"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_hash",
                    "type": "string"
                }
            ],
            "name": "getAmountByHash",
            "outputs": [
                {
                    "name": "",
                    "type": "uint256"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "anonymous": false,
            "inputs": [
                {
                    "indexed": true,
                    "name": "burner",
                    "type": "address"
                },
                {
                    "indexed": false,
                    "name": "value",
                    "type": "uint256"
                }
            ],
            "name": "TokensBurned",
            "type": "event"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_address",
                    "type": "address"
                },
                {
                    "name": "_amount",
                    "type": "uint256"
                },
                {
                    "name": "_hash",
                    "type": "string"
                }
            ],
            "name": "grantCoins",
            "outputs": [],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "anonymous": false,
            "inputs": [
                {
                    "indexed": true,
                    "name": "from",
                    "type": "address"
                },
                {
                    "indexed": true,
                    "name": "to",
                    "type": "address"
                },
                {
                    "indexed": false,
                    "name": "value",
                    "type": "uint256"
                }
            ],
            "name": "Transfer",
            "type": "event"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_spender",
                    "type": "address"
                },
                {
                    "name": "_addedValue",
                    "type": "uint256"
                }
            ],
            "name": "increaseApproval",
            "outputs": [
                {
                    "name": "",
                    "type": "bool"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_to",
                    "type": "address"
                },
                {
                    "name": "_value",
                    "type": "uint256"
                }
            ],
            "name": "transfer",
            "outputs": [
                {
                    "name": "",
                    "type": "bool"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "constant": false,
            "inputs": [
                {
                    "name": "_from",
                    "type": "address"
                },
                {
                    "name": "_to",
                    "type": "address"
                },
                {
                    "name": "_value",
                    "type": "uint256"
                }
            ],
            "name": "transferFrom",
            "outputs": [
                {
                    "name": "",
                    "type": "bool"
                }
            ],
            "payable": false,
            "stateMutability": "nonpayable",
            "type": "function"
        },
        {
            "inputs": [],
            "payable": true,
            "stateMutability": "payable",
            "type": "constructor"
        },
        {
            "constant": true,
            "inputs": [
                {
                    "name": "_owner",
                    "type": "address"
                },
                {
                    "name": "_spender",
                    "type": "address"
                }
            ],
            "name": "allowance",
            "outputs": [
                {
                    "name": "",
                    "type": "uint256"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [
                {
                    "name": "_owner",
                    "type": "address"
                }
            ],
            "name": "balanceOf",
            "outputs": [
                {
                    "name": "",
                    "type": "uint256"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "decimals",
            "outputs": [
                {
                    "name": "",
                    "type": "uint8"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "INITIAL_SUPPLY",
            "outputs": [
                {
                    "name": "",
                    "type": "uint256"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "name",
            "outputs": [
                {
                    "name": "",
                    "type": "string"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "symbol",
            "outputs": [
                {
                    "name": "",
                    "type": "string"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        },
        {
            "constant": true,
            "inputs": [],
            "name": "totalSupply",
            "outputs": [
                {
                    "name": "",
                    "type": "uint256"
                }
            ],
            "payable": false,
            "stateMutability": "view",
            "type": "function"
        }
    ]
;

const localhost8545 = 'http://localhost:8545';
const ropstenInfura = 'https://ropsten.infura.io/v3/22b273651d424974b7ef0de70a7ed880';
const ropstenEtherscan = 'https://ropsten.etherscan.io/tx/';
const contractAddress = '0x6c90732441c99b8c5f2d47f2280e1c5a00da89b6';

function createEthWallet() {
    web3 = new Web3(new Web3.providers.HttpProvider(ropstenInfura));
    var newWalletAdress = web3.eth.accounts.wallet.create(1);
    $('input[name="newethwallet"]').val(newWalletAdress[0].address);
    $('input[name="ethprivatekey"]').val(newWalletAdress[0].privateKey);
}

function balanceOf(walletAdress) {

    web3 = new Web3(typeof web3 !== 'undefined' ? web3.currentProvider : new Web3.providers.HttpProvider(localhost8545));
    var myContract = new web3.eth.Contract(contractABI, contractAddress);
    myContract.methods.balanceOf(walletAdress).call({ from: walletAdress }).then(function (result) {//https://web3js.readthedocs.io/en/1.0/web3-eth-contract.html#methods-mymethod-call

        if (  !$('#ethamount').length ) {
            alert("Current account balance:" + result);
        }
        if ( $('#ethamount').length ) {
            $('#ethamount').text(result);
        }

    });
}

function transfer(sender, senderPK, reciever, amount) {
    var web3 = new Web3(new Web3.providers.HttpProvider(ropstenInfura));

    web3.eth.getTransactionCount(sender, function (err, nonce) {
        var myContract = new web3.eth.Contract(contractABI, contractAddress);
        var tx = new ethereumjs.Tx({
            nonce: nonce,
            gasPrice: web3.utils.toHex(web3.utils.toWei('50', 'gwei')),
            gasLimit: 100000,
            to: contractAddress,
            value: 0,
            data: myContract.methods.transfer(reciever, amount).encodeABI(),
        });

        tx.sign(ethereumjs.Buffer.Buffer.from(senderPK, 'hex'));

        web3.eth.sendSignedTransaction('0x' + tx.serialize().toString('hex'), function (err, transactionHash) {
            console.log(err ? err : ropstenEtherscan + transactionHash);
        });
    });
}

function burn(publicKey, privateKey, amount) {
    var web3 = new Web3(new Web3.providers.HttpProvider(ropstenInfura));

    web3.eth.getTransactionCount(publicKey, function (err, nonce) {
        var myContract = new web3.eth.Contract(contractABI, contractAddress);
        var tx = new ethereumjs.Tx({
            nonce: nonce,
            gasPrice: web3.utils.toHex(web3.utils.toWei('50', 'gwei')),
            gasLimit: 100000,
            to: contractAddress,
            value: 0,
            data: myContract.methods.burn(amount).encodeABI(),
        });

        tx.sign(ethereumjs.Buffer.Buffer.from(privateKey, 'hex'));

        web3.eth.sendSignedTransaction('0x' + tx.serialize().toString('hex'), function (err, transactionHash) {
            console.log(err ? err : ropstenEtherscan + transactionHash);
        });

    });
}

if ($('input[name="newethwallet"]') && $('input[name="ethprivatekey"]')) {
    createEthWallet();
}

$('.js-click-balance').on('click', function () {
   balanceOf( $('#ethaddr').text() );
});


$('.js-burn-tokens').on('click', function () {
    console.log($('#ethaddr').text());
    console.log($('#ethhiddenkey').val());
    console.log($('#burntokens').val());
    burn($('#ethaddr').text(), $('#ethhiddenkey').val(), $('#burntokens').val() );
});


$('.js-send-tokens').on('click', function () {
    transfer($('#ethaddr').text(), $('#ethhiddenkey').val(), $('#sendto').val(), $('#sendammount').val())
});
