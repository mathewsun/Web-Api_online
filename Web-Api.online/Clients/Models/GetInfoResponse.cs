﻿using Newtonsoft.Json;

namespace Web_Api.online.Clients.Models
{
    public class GetInfoResponse
    {
        public string Version { get; set; }
        public string ProtocolVersion { get; set; }
        public string WalletVersion { get; set; }
        public decimal Balance { get; set; }
        public double Blocks { get; set; }
        public double TimeOffset { get; set; }
        public double Connections { get; set; }
        public string Proxy { get; set; }
        public double Difficulty { get; set; }
        public bool Testnet { get; set; }
        public double KeyPoolEldest { get; set; }
        public double KeyPoolSize { get; set; }

        [JsonProperty("unlocked_until")]
        public ulong UnlockedUntil { get; set; }

        public decimal PayTxFee { get; set; }
        public decimal RelayTxFee { get; set; }
        public string Errors { get; set; }
    }
}
