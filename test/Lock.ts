const { ethers } = require("hardhat");

describe("NFTMarket", function () {
  it("Should deploy NFTMarket", async function () {
    const NFTMarket = await ethers.getContractFactory("NFTMarket");
    const nftMarket = await NFTMarket.deploy();

    await nftMarket.deploymentTransaction();

    const tokenURL = "https://token-url.com";
    const transaction = await nftMarket.createNFT(tokenURL);
    
    const receipt = await transaction.wait();
    
    // If you need event args, uncomment and use this line
    const args = receipt.events[0]?.args;
    console.log("args", args);
  });
});
