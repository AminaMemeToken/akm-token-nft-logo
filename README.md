# Amina Meme Token (AKM)

Amina Meme Token ($AKM) is a meme token project on the Polygon network.  
It combines humor, community, and creativity—without income promises or financial guarantees.

---

## Key Contracts

- **ERC20 Token:** `AminaMemeToken.sol`  
  - Total Supply: 850,000,000,000 AKM  
  - Burnable (ERC20Burnable) + Ownable  
  - Special `transferWithFee()` function applying a 2% fee  
    - 50% burned to `0x...dEaD`  
    - 50% sent to `rewardWallet`  
  - Standard `transfer()` calls remain fee-free  

- **Unique NFT:** `LogoNFT.sol`  
  - ERC721URIStorage + Ownable  
  - Only one NFT can ever be minted (tokenId = 0)  
  - Metadata stored on IPFS, including the official AKM logo (`AKM-logo.png`)  

---

## Whitepaper

The official **Whitepaper v1.0** (`Whitepaper.pdf`) is included.  
However, because the first version uses **"Last Updated"** instead of a strict creation date,  
future versions will be maintained in a **separate repository** for proper version tracking.

 See: [Whitepaper Repository](https://github.com/AminaMemeToken/legal-documents-and-whitepaper/tree/main/Whitepaper)

---

## Repository Structure

- `AminaMemeToken.sol` → ERC20 contract (AKM token)  
- `LogoNFT.sol` → ERC721 contract (unique logo NFT)  
- `metadata.json` → NFT metadata file (points to IPFS-hosted logo)  
- `AKM-logo.png` → Project logo used for NFT metadata  
- `Whitepaper.pdf` → Whitepaper v1.0 (for reference only; future updates in separate repo)  
- `README.md` → Project overview (this file)  

---

##  Disclaimer

AKM is a meme token created for **entertainment and community purposes only**.  
This is **not financial advice**, and no profits or outcomes are guaranteed.  
Participation may be restricted in certain jurisdictions. Please ensure compliance with your local laws and regulations.
Always do your own research.(DYOR)
