import 'package:track_my_crypto/models/crypto.dart';

class CryptoData {
  final List<Crypto> cryptoList = [
    Crypto(
      imagePath: 'assets/images/ethereum.png',
      name: 'Ethereum',
      symbol: '(ETH)',
      description:
          'The first Bitcoin alternative on our list, Ethereum (ETH), is a decentralized software platform that enables smart contracts and decentralized applications (dApps) to be built and run without any downtime, fraud, control, or interference from a third party. The goal behind Ethereum is to create a decentralized suite of financial products that anyone in the world can freely access, regardless of nationality, ethnicity, or faith.',
    ),
    Crypto(
      imagePath: 'assets/images/litecoin.png',
      name: 'Litecoin',
      symbol: '(LTC)',
      description:
          'Litecoin (LTC), launched in 2011, was among the first cryptocurrencies to follow in the footsteps of Bitcoin and has often been referred to as “silver to Bitcoin’s gold.”11 It was created by Charlie Lee, an MIT graduate and former Google engineer. Litecoin is based on an open-source global payment network that is not controlled by any central authority and uses scrypt as a PoW, which can be decoded with the help of consumer-grade central processing units (CPUs).',
    ),
    Crypto(
      imagePath: 'assets/images/cardano.png',
      name: 'Cardano',
      symbol: '(ADA)',
      description:
          'Cardano (ADA) is an “Ouroboros proof-of-stake” cryptocurrency that was created with a research-based approach by engineers, mathematicians, and cryptography experts. The project was co-founded by Charles Hoskinson, one of the five initial founding members of Ethereum. After having some disagreements with the direction that Ethereum was taking, he left and later helped to create Cardano.',
    ),
    Crypto(
      imagePath: 'assets/images/polkadot.png',
      name: 'Polkadot',
      symbol: '(DOT)',
      description:
          'Polkadot (DOT) is a unique PoS cryptocurrency aimed at delivering interoperability among other blockchains. Its protocol is designed to connect permissioned and permissionless blockchains as well as oracles to allow systems to work together under one roof. Polkadot’s core component is its relay chain, which allows the interoperability of varying networks.',
    ),
    Crypto(
      imagePath: 'assets/images/bitcoincash.png',
      name: 'Bitcoin Cash',
      symbol: '(BCH)',
      description:
          'Bitcoin Cash BCH holds an important place in the history of altcoins because it is one of the earliest and most successful hard forks of the original Bitcoin. In the cryptocurrency world, a fork takes place as the result of debates and arguments between developers and miners. Due to the decentralized nature of digital currencies, wholesale changes to the code underlying the token or coin at hand must be made due to general consensus.',
    ),
    Crypto(
      imagePath: 'assets/images/stellar.png',
      name: 'Stellar',
      symbol: '(XLM)',
      description:
          'Stellar (XLM) is an open blockchain network designed to provide enterprise solutions by connecting financial institutions for the purpose of large transactions. Huge transactions between banks and investment firms—typically taking several days, involving a number of intermediaries, and costing a good deal of money—can now be made nearly instantaneously with no intermediaries and cost little to nothing for those making the transaction.',
    ),
    Crypto(
      imagePath: 'assets/images/dogecoin.png',
      name: 'Dogecoin',
      symbol: '(DOGE)',
      description:
          'Dogecoin (DOGE), seen by some as the original “memecoin,” caused a stir in 2021 as the price of the coin skyrocketed. The coin, which uses an image of the Shiba Inu as its avatar, is accepted as a form of payment by some major companies, including the Dallas Mavericks, Kronos, and—perhaps most notably—SpaceX, an American aerospace manufacturer owned by Elon Musk. Dogecoin was created by two software engineers, Billy Markus and Jackson Palmer, in 2013.',
    ),
    Crypto(
      imagePath: 'assets/images/binance.png',
      name: 'Binance Coin',
      symbol: '(BNB)',
      description:
          'Binance Coin (BNB) is a utility cryptocurrency that operates as a payment method for the fees associated with trading on the Binance Exchange. It is the third-largest cryptocurrency by market capitalization.24 Those who use the token as a means of payment for the exchange can trade at a discount. Binance Coin’s blockchain is also the platform on which Binance’s decentralized exchange operates.',
    ),
    Crypto(
      imagePath: 'assets/images/tether.png',
      name: 'Tether',
      symbol: '(USDT)',
      description:
          'Tether (USDT) was one of the first and most popular of a group of so-called stablecoins—cryptocurrencies that aim to peg their market value to a currency or other external reference point to reduce volatility. Because most digital currencies, even major ones like Bitcoin, have experienced frequent periods of dramatic volatility, Tether and other stablecoins attempt to smooth out price fluctuations to attract users who may otherwise be cautious.',
    ),
    Crypto(
      imagePath: 'assets/images/monero.png',
      name: 'Monero',
      symbol: '(XMR)',
      description:
          'Monero XMR is a secure, private, and untraceable currency. This open-source cryptocurrency was launched in April 2014 and soon garnered great interest among the cryptography community and its enthusiasts. The development of this cryptocurrency is completely donation-based and community-driven. Monero has launched with a strong focus on decentralization and scalability, and it enables complete privacy by using a special technique called “ring signatures.',
    ),
    Crypto(
      imagePath: 'assets/images/xrp.png',
      name: 'Xrp',
      symbol: '(XRP)',
      description:
          'XRP is a digital asset built for payments. It is the native digital asset on the XRP Ledger—an open-source, permissionless and decentralized blockchain technology that can settle transactions in 3-5 seconds. XRP can be sent directly without needing a central intermediary, making it a convenient instrument in bridging two different currencies quickly and efficiently.',
    ),
    Crypto(
      imagePath: 'assets/images/bitcoin.png',
      name: 'Bitcoin',
      symbol: '(BTC)',
      description:
          'Bitcoin is a decentralized digital currency created in January 2009. It follows the ideas set out in a white paper by the mysterious and pseudonymous Satoshi Nakamoto.12 The identity of the person or persons who created the technology is still a mystery. Bitcoin offers the promise of lower transaction fees than traditional online payment mechanisms do, and unlike government-issued currencies, it is operated by a decentralized authority.',
    ),
    Crypto(
      imagePath: 'assets/images/usdcoin.png',
      name: 'USD Coin',
      symbol: '(USDC)',
      description:
          'USD Coin (USDC) is a digital stablecoin that is pegged to the United States dollar. USD Coin is managed by a consortium called Centre, which was founded by Circle and includes members from the cryptocurrency exchange Coinbase and Bitcoin mining company Bitmain, an investor in Circle. USDC is issued by a private entity and should not be confused with a central bank digital currency (CBDC).',
    ),
    Crypto(
      imagePath: 'assets/images/solana.png',
      name: 'Solana',
      symbol: '(SOL)',
      description:
          'Solana is a blockchain platform designed to host decentralized, scalable applications. Founded in 2017, Solana is an open-source project currently run by Solana Foundation based in Geneva, while the blockchain was built by San Francisco-based Solana Labs.1 Solana is much faster in terms of the number of transactions it can process and has significantly lower transaction fees compared to rival blockchains like Ethereum.',
    ),
    Crypto(
      imagePath: 'assets/images/avalanche.png',
      name: 'Avalanche',
      symbol: '(AVAX)',
      description:
          'Avalanche describes itself as an “open, programmable smart contracts platform for decentralized applications.” What does that mean? Like many other decentralized protocols, Avalanche has its own token called AVAX, which is used to pay transaction fees and can be staked to secure the network.',
    ),
    Crypto(
      imagePath: 'assets/images/terra.png',
      name: 'Terra',
      symbol: '(LUNA)',
      description:
          'Terra is an open-source blockchain payment platform for algorithmic stablecoins, which are cryptocurrencies that track the price of currencies or other assets. The Terra blockchain enables users to spend, save, trade, or exchange Terra stablecoins instantly on it. The Terra protocol creates stablecoins that consistently track the price of any fiat currency (a government-backed currency such as the U.S. dollar or euro). It consists of two main cryptocurrency tokens—Terra and Luna—which have the following features.',
    ),
    Crypto(
      imagePath: 'assets/images/binanceusd.png',
      name: 'Binance USD',
      symbol: '(BUSD)',
      description:
          'Binance USD (BUSD) is a new USD-denominated stablecoin approved by the New York State Department of Financial Services (NYDFS) that will be launched in partnership with Paxos and Binance.',
    ),
    Crypto(
      imagePath: 'assets/images/shibainu.png',
      name: 'Shiba Inu',
      symbol: '(SHIB)',
      description:
          'Shiba Inu (SHIBUSD) is an Ethereum-based altcoin (a cryptocurrency other than Bitcoin) that features the Shiba Inu—a Japanese breed of hunting dog—as its mascot. Shiba Inu is widely considered to be an alternative to Dogecoin; in fact, proponents of Shiba Inu tout it as the Dogecoin killer.',
    ),
    Crypto(
      imagePath: 'assets/images/polygon.png',
      name: 'Polygon',
      symbol: '(MATIC)',
      description:
          'Polygon is a “layer two” or “sidechain” scaling solution that runs alongside the Ethereum blockchain — allowing for speedy transactions and low fees. MATIC is the network’s native cryptocurrency, which is used for fees, staking, and more. You can buy or sell MATIC via exchanges like Coinbase.',
    ),
    Crypto(
      imagePath: 'assets/images/terrausd.png',
      name: 'Terra USD',
      symbol: '(UST)',
      description:
          'TerraUSD is a decentralized stablecoin running on Ethereum that attempts to maintain a value of US\$1.00. Unlike centralized stablecoins, UST isn’t backed by US dollars in a bank account. Instead, in order to mint 1 TerraUSD, US\$1.00 worth of TerraUSD’s reserve asset (LUNA) must be burned.',
    ),
    Crypto(
      imagePath: 'assets/images/crypto.comcoin.png',
      name: 'Crypto.com Coin',
      symbol: '(CRO)',
      description:
          'Crypto.com is a cryptocurrency exchange that supports trading, investing, staking, wallets, NFTs, and more. This exchange offers more than 250 different currencies, reasonable fees, and discounts for those who hold a significant stake in Crypto.com Coin (CRO). Its ecosystem of crypto-related products could make it a good choice for those looking to do a lot with their cryptocurrency.',
    ),
    Crypto(
        imagePath: 'assets/images/wrappedbitcoin.png',
        name: 'Wrapped Bitcoin',
        symbol: '(WBTC)',
        description:
            'Wrapped Bitcoin (WBTC) is an ERC-20 token that represents Bitcoin (BTC) on the Ethereum blockchain. A key advantage of WBTC is its integration into the world of Ethereum wallets, dapps, and smart contracts.  The BTC that backs WBTC is transparently verifiable through a “proof of reserve” system that verifies the 1:1 backing between minted WBTC tokens and Bitcoin stored by custodians.'),
    Crypto(
      imagePath: 'assets/images/dai.png',
      name: 'Dai',
      symbol: '(DAI)',
      description:
          'Dai (DAI) is a stablecoin linked to the value of the U.S. dollar. To maintain its price stability, DAI’s value is regulated by MakerDAO, its decentralized governance community. While actual DAI stablecoins are produced via its Maker Protocol platform that accepts various cryptocurrencies as collateral, DAI can also be bought directly using fiat money (like the U.S. dollar) on most regulated crypto exchanges.',
    ),
    Crypto(
      imagePath: 'assets/images/cosmos.png',
      name: 'Cosmos',
      symbol: '(ATOM)',
      description:
          'Cosmos (ATOM) is a cryptocurrency that powers an ecosystem of blockchains designed to scale and interoperate with each other. The team aims to create an Internet of Blockchains, a network of blockchains able to communicate with each other in a decentralized way. Cosmos is a proof-of-stake chain. ATOM holders can stake their tokens in order to maintain the network and receive more ATOM as a reward.',
    ),
    Crypto(
      imagePath: 'assets/images/chainlink.png',
      name: 'Chain Link',
      symbol: '(LINK)',
      description:
          'Chainlink (LINK) is a both cryptocurrency and technology platform that enables non-blockchain enterprises to securely connect with blockchain platforms. Chainlink is middleware that connects blockchain-based smart contracts with external data, such as baseball scores or stock prices. Chainlink\'s LINK currency is used to pay Chainlink network operators and collateralize the network\'s smart contract agreements.',
    ),
    Crypto(
      imagePath: 'assets/images/nearprotocol.png',
      name: 'NEAR Protocol',
      symbol: '(NEAR)',
      description:
          'NEAR Protocol is a decentralized application (dApp) platform and Ethereum competitor that focuses on developer and user-friendliness. Its native NEAR tokens are used to pay for transaction fees and storage on the Near crypto platform. NEAR is a Proof-of-Stake blockchain that uses sharding technology to achieve scalability.',
    ),
    Crypto(
      imagePath: 'assets/images/uniswap.png',
      name: 'Uniswap',
      symbol: '(UNI)',
      description:
          'Uniswap is a cryptocurrency exchange which uses a decentralized network protocol. Uniswap is also the name of the company that initially built the Uniswap protocol. The protocol facilitates automated transactions between cryptocurrency tokens on the Ethereum blockchain through the use of smart contracts. As of October 2020, Uniswap was estimated to be the largest decentralized exchange and the fourth-largest cryptocurrency exchange overall by daily trading volume.',
    ),
    Crypto(
      imagePath: 'assets/images/tron.png',
      name: 'Tron',
      symbol: '(TRX)',
      description:
          'Tron is a blockchain-based decentralized digital platform with its own cryptocurrency, called Tronix or TRX. Founded in 2017 by a Singapore non-profit organization, the Tron Foundation, Tron aims to host a global entertainment system for the cost-effective sharing of digital content. Initially marketed primarily in Asia, Tron had now gone global. The platform had more than 50 million accounts as of August 2021.',
    ),
    Crypto(
      imagePath: 'assets/images/ftx.png',
      name: 'Ftx Token',
      symbol: '(FTT)',
      description:
          'FTT is a token used on FTX, an international crypto derivatives exchange. Often described as the “backbone” of the FTX exchange, FTT provides its holders with many benefits. The terms “FTX token” and “FTT” are sometimes used interchangeably. By having FTX tokens in your possession, you get to enjoy lower trading fees and access a slew of perks on the FTX exchange. You can also use your tokens as collateral to trade derivatives.',
    ),
    Crypto(
      imagePath: 'assets/images/algorand.png',
      name: 'Algorand',
      symbol: '(ALGO)',
      description:
          'Monero XMR is a secure, private, and untraceable currency. This open-source cryptocurrency was launched in April 2014 and soon garnered great interest among the cryptography community and its enthusiasts. The development of this cryptocurrency is completely donation-based and community-driven. Monero has launched with a strong focus on decentralization and scalability, and it enables complete privacy by using a special technique called “ring signatures".',
    ),
    Crypto(
      imagePath: 'assets/images/decentraland.png',
      name: 'Decentraland',
      symbol: '(MANA)',
      description:
          'Decentraland (MANA) is an Ethereum token that powers the Decentraland virtual reality platform. MANA can be used to pay for virtual plots of land in Decentraland as well as in-world goods and services.',
    ),
  ];
}
