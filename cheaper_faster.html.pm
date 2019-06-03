#lang pollen

◊(define-meta title "Cheaper & faster")
◊(define-meta subtitle "Avoids middleman fees and settles quickly")
◊(define-meta updated "2019-05-29T06:35:29+02:00")
◊(define-meta uuid "ac14d4a1-3796-4f5b-9350-b56e796625a1")

Cryptocurrencies provide two major advantages compared to other digital payments:

◊ul{
    ◊li{◊link[rel-fees]{Lower fees}}
    ◊li{◊link[rel-speed]{Faster}}
}

It does this by cutting out the middleman. But there is a ◊link[rel-risk-tradeoff]{trade-off}---it shifts the risk management from the merchant to the customer. Merchants no longer have to worry about ◊link[rel-charge-back-fraud]{charge back fraud} but instead customers lose the ability to do charge backs.


◊subhead{Cryptocurrency fees}

Fees in cryptocurrencies are relatively straightforward: each transaction has a fixed fee, independent of the transaction value. The one who sends the transaction pays the fee.◊sn{crypto-fee}

◊ndef["crypto-fee"]{
    Because cryptocurrencies are so volatile, the expected fee converted to fiat varies. The fees are also set by demand, but most cryptocurrencies have ample space to keep the fees very low.
}

◊figure{
    ◊table-body{
        ◊tr{◊tds{Bitcoin Cash}  ◊tds{Monero}    ◊tds{Dogecoin}  ◊tds{Litecoin}  ◊tds{Bitcoin}}
        ◊tr{◊td{$0.0012}        ◊td{$0.0028}    ◊td{$0.003}     ◊td{$0.0162}    ◊td{$2.46}}
    }
    ◊figcaption{The ◊link[median-tx-fee]{median transaction fee} for common cryptocurrencies 2019-05-25. (◊link[median-tx-fee-monero]{Link for Monero})◊sn{zero-fee-cryptos}}
}

◊ndef["zero-fee-cryptos"]{
    There are cryptocurrencies boasting zero fees, but they use unproven consensus algorithms or centralized governance. That's why I only include coins using proof-of-work.
}

For the most part cryptocurrencies have very low fees---enough to call them negligible. But there's an elephant in the room: Bitcoin has very large fees.

In fact Bitcoin fees of $2-3 is still very low compared the fees during the bull run in December 2017, which reached an average of $50(!!) per transaction. This is because transaction throughput in Bitcoin is maxed out, and to get your transaction accepted you need to pay more than others.◊sn{fee-market}

◊ndef["fee-market"]{
    There are some Bitcoin developers who claims high fees are necessary for the survival of Bitcoin. Gregory Maxwell was famously "◊link[nullc-champaign]{pulling out the champaign}" when Bitcoin had $50 fees. He thought it was a sign that the market supported his ◊em{"fee market"} theory.

    The issue is basically that Bitcoin's block reward will eventually run out (after several decades), so who will pay the miners to secure the network? The "fee market" idea is that transactions must be very expensive for it to be worth it for miners.

    There are other solutions:

    1. Many cheap instead of few expensive transactions
    2. Prevent the blocksize reward from going to zero

    See ◊link[fee-market-myth]{the fee market myth} for more info (it was written a year before the ridiculous $50 fees).
}

You may think the fees are so high because Bitcoin is much more popular than other cryptocurrencies, but that's not the whole story.  In fact it would be very easy to lower the fees---Bitcoin Cash can for example handle at least 20 times the transaction count of Bitcoin while keeping the same low fees.

Bitcoin just doesn't work as a currency with these high and unreliable fees, but it's not representative of cryptocurrencies in general.◊sn{bch-btc}

◊ndef["bch-btc"]{
    See ◊link[history-blocksize]{this timeline} for the history of the blocksize debate (it only goes up to Dec 2017, but as of May 2019 no significant development has happened). Because Bitcoin didn't raise the blocksize ◊link[bch]{Bitcoin Cash} was created in 2017, keeping fees low and transaction capacity high.

    There are ◊strong{◊link[hearn]{no valid}} reasons against a moderate blocksize increase, yet there are Bitcoin developers who to this day think we should ◊link[luke-300kb]{decrease it to 300kb}. Ideas like this is why Bitcoin no longer work as a currency.
}

◊(define hearn "https://blog.plan99.net/the-resolution-of-the-bitcoin-experiment-dabb30201f7?gi=c2a62f310034")
◊(define bch "https://www.bitcoin.com/what-is-bitcoin-cash/")
◊(define fee-market-myth "https://medium.com/@johnblocke/the-fee-market-myth-b9d189e45096")
◊(define median-tx-fee "https://bitinfocharts.com/comparison/median_transaction_fee-btc-ltc-bch-xmr-doge.html")
◊(define median-tx-fee-monero "https://www.monero.how/monero-transaction-fees")
◊(define nullc-champaign "https://lists.linuxfoundation.org/pipermail/bitcoin-dev/2017-December/015455.html")
◊(define luke-300kb "https://news.bitcoin.com/core-developers-300kb-block-proposal-bolstered-in-bid-to-push-lightning-adoption/")
◊(define history-blocksize "https://hackernoon.com/the-great-bitcoin-scaling-debate-a-timeline-6108081dbada")


◊subhead{Who pays the fees?}

◊qt[#:author "Mike Schlotman, Kroger's executive vice president and CFO"
    #:date "Mars 2019"
    #:url "http://ir.kroger.com/file/Index?KeyFile=396935873"]{
    Visa has been misusing its position and charging retailers excessive fees for a long time. They conceal from customers what Visa and its banks charge retailers to accept Visa credit cards.
}

Wait a minute, isn't paying with credit cards, debit cards, PayPal etc already free? I've never paid a fee---except maybe a yearly fee for having a card. Some credit cards even give you a bonus for every purchase! So what's the deal?

That's because you as a customer don't see the high fees---but the merchant does. Fees of 1-4% per transaction can be very demanding, especially for low-margin businesses.

To make up for the fees (and to compensate for ◊link[rel-charge-back-fraud]{charge back fraud}) merchants instead raise their prices. So you as a customer actually pay for the fees, they're just indirect and hidden from view.


◊subhead{Fee comparisons}

This is my attempt to summarize and compare the fees of different digital payments. It's difficult to make a complete comparison, so be aware it's a generalized approximation.◊sn{comparisons}

◊ndef["comparisons"]{
    Fees can differ depending on the amount of transactions, the transaction value, the type of your business, your country and your chosen fee model. Not to mention different providers have different fee structures.

    See ◊link[credit-card-processing-fees]{this} introduction to credit card processing fees.
}

◊(define credit-card-processing-fees "https://www.creditdonkey.com/credit-card-processing-fees.html")

There are different types of cards; debit and credit cards, and different providers like VISA, Mastercard or American Express. I'll treat them as one category for simplicity, even though they have slightly different fees. Wire transfer fees also vary a lot, international transfers outside of ◊link[sepa]{SEPA} can be very expensive depending on your bank and country.

Mobile payments have become very popular recently.◊sn{mobile-payments} As a representative I'll choose Swish, which is very popular here in Sweden. It's connected to your bank and have free person-to-person transactions, but unsurprisingly there are fees for businesses.

◊ndef["mobile-payments"]{
    The popularity of mobile payments is easy to understand. They're convenient, cheap and fast. In fact they work exactly like cryptocurrency wallets do---just pay with a simple app on your phone.

    A definite advantage over cryptocurrencies is mobile payments being directly integrated to your existing bank account.
}

◊figure{
    ◊table-body{
        ◊tr{◊td{}                                           ◊tds{Transaction fee}}
        ◊tr{◊tds{◊link[wire-transfer-fees]{Wire transfer}}  ◊td{$0--50}}
        ◊tr{◊tds{◊link[card-fees]{Cards}}                   ◊td{1--4%}}
        ◊tr{◊tds{◊link[paypal-fees]{PayPal}}                ◊td{2.9--4.4% + $0.30}}
        ◊tr{◊tds{◊link[swish]{Swish}}                       ◊td{$0.16--$0.26}}
        ◊tr{◊tds{◊link[rel-crypto-fees]{Bitcoin Cash}}      ◊td{$0.0012}}
    }
    ◊figcaption{A summary of generalized transaction fees of various payment systems.}
}

◊(define card-fees "https://www.cardfellow.com/blog/average-fees-for-credit-card-processing/")
◊(define wire-transfer-fees "https://www.nerdwallet.com/blog/banking/wire-transfers-what-banks-charge/")

I've also left out any monthly and yearly fee, which you'll probably have for regular payment services as well. For example you might rent credit card terminals for such a fee. Swish, which has comparatively low transaction fees, also have a $10--$50 yearly fee.◊sn{bank-fees}

◊ndef["bank-fees"]{
    Bank accounts also come with a fee. I pay for example a $30 yearly fee just to have my bank account, which includes a debit card and ability to do banking online.
}

As we can see cryptocurrencies are decidedly cheaper than the other options. Even Swish, which is much cheaper than PayPal or cards, is 100x more expensive than Bitcoin Cash. There are also no yearly fees of any kind just to have access to it.

As the ◊link[what-is-money]{purpose of money} is to increase economic efficiency, a 1--4% tax on nearly all digital payments is really counter-productive.◊sn{insurance} Therefore a move towards cheap payment solutions like Swish or cryptocurrencies would be very beneficial economically.

◊ndef["insurance"]{
    Yes, parts of the fees represents fraud protection. But that too comes ◊link[rel-charge-back-fraud]{with a cost}, and if viewed from a global economic perspective it might even be detrimental.
}

◊(define paypal-fees "https://www.paypal.com/us/webapps/mpp/paypal-fees")
◊(define swish
    `("https://www.getswish.se/foretag/vara-erbjudanden/"
      "Get started with Swish (Swedish), the fees are different depending on your bank"))


◊subhead{Payment speed}

Shifting focus a little, let's take a look at payment speed. We can identify different stages of a digital payment:◊sn{visa-stages}

◊ndef["visa-stages"]{
    Credit card payments are more complex. See ◊link[how-visas-payment-system-works]{this blog post} for an overview of VISA's payment system.
}

◊(define how-visas-payment-system-works "http://blog.unibulmerchantservices.com/how-visas-payment-system-works/")

◊ol{
    ◊li{Notification}
    ◊li{Settlement}
    ◊li{Irreversible}
}

You'll get a ◊em{notification} a few seconds after your payment.◊sn{0-conf-notification} For a credit card this ensures the customer has a valid card and has entered the right PIN-code, but no money has been transferred yet. The money changes (virtual) hands during the ◊em{settlement}, which might be several days later. Finally a transaction might still be reversed much later, when this is no longer possible I call the transaction ◊em{irreversible}.

◊ndef["0-conf-notification"]{
    Accepting a cryptocurrency transaction which haven't any confirmation yet, called ◊em{0-conf}, is often criticised in the cryptocurrency community. But it's really no different than accepting a credit card payment instantly---they're both uncertain.
}


◊subhead{Charge back fraud}

For us costumers it's a feature that transactions can be reversed. For example if someone steals your credit card or a merchant is fraudulent, you can reverse the transactions by calling your issuer.  But this can also be abused, which is called ◊link[charge-back-fraud]{◊em{charge back fraud}} (or ◊em{friendly fraud}).

It goes something like this:

◊ol{
    ◊li{Place an order}
    ◊li{Receive item}
    ◊li{Claim your card was stolen}
    ◊li{Get your money back}
}

This can be a big problem for some merchants, especially those ◊link[fraud-digital]{serving digital goods}, who often has to swallow it as a loss. To make matters worse merchants also have to pay non-negotiable and non-refundable ◊link[charge-back-fees]{charge back fees} even when disputing.◊sn{bank-chargeback}

◊(define charge-back-fees "https://chargebacks911.com/knowledge-base/chargeback-fees/")
◊(define fraud-digital "https://chargeback.com/growing-cost-of-fraud-for-digital-goods/")

◊ndef["bank-chargeback"]{
    It's also common that banks are the ones who have to eat the cost of the fraud.
}


◊subhead{Speed comparisons}

Credit card transactions can take days to settle, and they can be ◊link[mastercard-chargeback]{reversed several months after} via charge backs. Mobile payments---via Apple Pay and similar---are often tied to credit cards and share their properties while others---like Swish---instead connect to your bank account directly.

Wire transfers aren't usually used for payments, but it's still a useful comparison to make.◊sn{wire-transfer} They are typically much slower than other payment systems but they're generally harder to reverse as they don't offer the same charge back protection as credit cards do.

◊ndef["wire-transfer"]{
    Inside the EU ◊link[sepa]{SEPA} has massively improved the state of wire transfers across borders. Transactions often go through the same day and they're cheaper than other types of wire transfers.
}

The unique property of cryptocurrencies is that they ◊link[transaction-security]{become irreversible} very quickly. In Bitcoin it usually takes 10--60 min.

◊(define mastercard-chargeback "https://chargeback.com/mastercard-chargeback-time-limits/")

◊figure{
    ◊table-body{
        ◊tr{◊td{}                   ◊tds{Notification}  ◊tds{Settlement}    ◊tds{Irreversible}}
        ◊tr{◊tds{Wire transfer}     ◊td{days}           ◊td{days}           ◊td{days}}
        ◊tr{◊tds{Cards}             ◊td{seconds}        ◊td{days}           ◊td{months}}
        ◊tr{◊tds{Mobile payments}   ◊td{seconds}        ◊td{days}           ◊td{days--months}}
        ◊tr{◊tds{Cryptocurrencies}  ◊td{seconds}        ◊td{an hour}        ◊td{an hour}}
    }
    ◊figcaption{A summary of the speed of various payment systems.}
}

The speed which cryptocurrencies settle and become irreversible significantly reduces the risk of charge back fraud and eliminates it for vast number of use-cases.◊sn{0-conf}

◊ndef["0-conf"]{
    There's a risk of having transactions reversed (◊link[double-spending]{double-spent}) before they're confirmed.  This can happen when delivering goods immediately after payment notification.

    Because transaction security is probabilistic, there's ◊link[reversing]{always a risk} of having a transaction reversed even for confirmed transactions. In practice it's ◊strong{very} low.
}


◊(define reversing "/how_do_cryptocurrencies_work.html#transaction-security")
◊(define double-spending "/how_do_cryptocurrencies_work.html#copying-a-coin-&-double-spending")
◊(define sepa "https://en.wikipedia.org/wiki/Single_Euro_Payments_Area")
◊(define transaction-security "/how_do_cryptocurrencies_work.html#transaction-security")

◊(define (tds txt)
   `(td (strong ,txt)))


◊subhead{The risk management trade-off}

It seems payment systems needs to choose between these two options:

◊ol{
    ◊li{Provide costumer protection but merchants might suffer from charge back fraud.}
    ◊li{Protect merchants from charge back fraud but don't provide protection for costumers.}
}

Traditional payment systems have chosen to protect costumers (or maybe that's the only option they can realistically choose---for social and technical reasons). Cryptocurrencies instead try to prevent transaction reversal and charge back fraud.

While it's of course bad to not have customer protection, there might be other solutions. For example offering optional fraud insurance or offering ◊em{custodial wallets} with extra protection. (A custodial wallet is managed by a third party, similar to a bank account).◊sn{crypto-protection}

◊ndef["crypto-protection"]{
    I haven't seen any "fraud insurance" yet, but don't see a reason why it can't be created if there's a need for it. Especially when combined with a custodial wallet.
}

In addition it might make risk management more practical. While it's basically impossible for merchants to audit all their customers, it's plausible for customers to check out a merchant. In fact we do it all the time: "this website looks shady!" or "my friend uses them all the time". Merchants are known and have a reputation while customers are innumerable and anonymous.


◊subhead{Conclusion}

We've seen that there are large benefits to cryptocurrency payments, and one large drawback:

◊ul{
    ◊plus{Cheaper}
    ◊plus{Settles quickly}
    ◊plus{Reduces or removes the risk for charge back fraud}
    ◊neg{No inherent fraud protection for costumers}
}

The drawback might be alleviated with optional systems in the future, letting us have the best of both worlds.

◊(define (plus . txt)
   `(li ((class "plus")) ,@txt))
◊(define (neg . txt)
   `(li ((class "neg")) ,@txt))

◊;http://blog.unibulmerchantservices.com/how-visas-payment-system-works/
◊;https://chargeback.com/chargeback-process/
◊;https://chargeback.com/mastercard-chargeback-time-limits/
◊(define charge-back-fraud "https://en.wikipedia.org/wiki/Chargeback_fraud")
◊(define rel-charge-back-fraud "#charge-back-fraud")
◊(define rel-fees "#fee-comparisons")
◊(define rel-speed "#speed-comparisons")
◊(define rel-crypto-fees "#cryptocurrency-fees")
◊(define rel-risk-tradeoff "#the-risk-management-trade-off")
◊(define what-is-money "what_is_money.html")

◊(define bitcoin-fees
    `("https://bitcoinfees.cash/"
      "Bitcoin Cash and Bitcoin fees"))