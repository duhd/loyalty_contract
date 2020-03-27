# loyalty_contract
Loyalty Ethereum Contract

## Step by Step Deploy:
1 - Deploy WalletStorage.sol, lưu lại địa chỉ contract

2 - Thực hiện txs gọi hàm setMemberApi của WalletStorage với input là acc ETH đang deploy

3 - Deploy WalletHistory.sol, lưu lại địa chỉ contract

4 - Deploy WalletBusiness.sol với input là địa chỉ contract WalletStorage và WalletHistory, lưu lại địa chỉ contract

5 - Thực hiện txs gọi hàm ChangeOwner của WalletStorage với input là địa chỉ contract WalletBusiness

6 - Thực hiện txs gọi hàm ChangeOwner của WalletHistory với input là địa chỉ contract WalletBusiness

7 - Thực hiện txs gọi hàm registerAccETH của WalletBusiness với input là mảng acc ETH để chạy txs
