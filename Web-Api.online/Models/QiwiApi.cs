using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using xNet;
using System.Threading.Tasks;
using System.Text.RegularExpressions;
using Web_Api.online.Services;

namespace Web_Api.online.Models
{
    public class QiwiApi
    {
        private QiwiService _qiwiService;

        public QiwiApi(QiwiService qiwiService)
        {
            _qiwiService = qiwiService;
        }
    }
}