﻿using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Web_Api.online.Models;
using Web_Api.online.Models.Tables;
using Web_Api.online.Repositories;
using System.Security.Claims;

namespace Web_Api.online.Controllers
{
    public class WalletsController : Controller
    {
        private WalletsRepository _walletsRepository;

        public WalletsController(WalletsRepository walletsRepository)
        {
            _walletsRepository = walletsRepository;
        }

        public class IndexModel
        {
            public List<Currency> Currencies { get; set; }
            public List<IncomeWallet> UserIncomeWallets { get; set; }
            public List<Wallet> UserWallets { get; set; }
        }

        // GET: WalletsController
        public async Task<ActionResult> Index()
        {
            List<Currency> currencies = await _walletsRepository.GetCurrenciesAsync();

            List<IncomeWallet> userIncomeWallets = new List<IncomeWallet>();
            List<Wallet> userWallets = new List<Wallet>();

            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            if (!string.IsNullOrEmpty(userId))
            {
                userIncomeWallets = await _walletsRepository.GetUserIncomeWalletsAsync(userId);
                userWallets = await _walletsRepository.GetUserWalletsAsync(userId);
            }

            //List <WalletsController> wallets = _walletsRepository.

            IndexModel model = new IndexModel();

            model.Currencies = currencies;
            model.UserIncomeWallets = userIncomeWallets;
            model.UserWallets = userWallets;

            return View(model);
        }

        public ActionResult Details(string name)
        {
            return View();
        }

        // GET: WalletsController/Create
        // Create income wallet
        [HttpGet]
        public async Task<JsonResult> Create(string id)
        {
            var userId = User.FindFirstValue(ClaimTypes.NameIdentifier);

            string walletAddress = Guid.NewGuid().ToString();

            IncomeWallet incomeWallet = new IncomeWallet()
            {
                UserId = userId,
                CurrencyAcronim = id,
                WalletAddress = walletAddress
            };

            incomeWallet = await _walletsRepository.CreateUserIncomeWalletAsync(incomeWallet);

            return Json(incomeWallet);
        }

        // POST: WalletsController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: WalletsController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: WalletsController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: WalletsController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: WalletsController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
