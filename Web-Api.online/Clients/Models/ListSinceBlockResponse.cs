﻿using System.Collections.Generic;

namespace Web_Api.online.Clients.Models
{
    public class ListSinceBlockResponse
    {
        public List<TransactionSinceBlock> Transactions { get; set; }
        public string Lastblock { get; set; }
    }

    public class TransactionSinceBlock
    {
        public string Account { get; set; }
        public string Address { get; set; }
        public string Category { get; set; }
        public decimal Amount { get; set; }
        public int Vout { get; set; }
        public decimal Fee { get; set; }
        public int Confirmations { get; set; }
        public string BlockHash { get; set; }
        public long BlockIndex { get; set; }
        public int BlockTime { get; set; }
        public string TxId { get; set; }
        public List<string> WalletConflicts { get; set; }
        public int Time { get; set; }
        public int TimeReceived { get; set; }
        public string Comment { get; set; }
        public string To { get; set; }
        public bool InvolvesWatchonly { get; set; }
    }

    //  Note: Do not alter the capitalization of the enum members
    public enum TransactionSinceBlockCategory
    {
        send,
        receive,
        generate,
        immature
    }
}
