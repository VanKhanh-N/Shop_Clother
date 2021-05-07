﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using ClothesStore.Model.Model.EF;
using ClothesStore.Model.ModelView;
using ClothesStore.Service.IService;
using Microsoft.AspNetCore.Mvc;

namespace ClothesStore.WebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class OrderController : Controller
    {
        IOrderService _orderService;
        ICustomerService _customerService;
        IProductService _productService;
        public OrderController(IOrderService orderService, ICustomerService customerService,IProductService productService)
        {
            _orderService = orderService;
            _customerService = customerService;
            _productService = productService;
        }
        public IActionResult Index()
        {
            return View();
        }

        public async Task<ActionResult> Create()
        {
            ViewBag.customer = await _customerService.GetAll();
            ViewBag.product = await _productService.GetAll();
            return View();
        }

        public async Task<ActionResult> Edit(int Id)
        {
            return View();
        }

        [HttpPost]
        public async Task<JsonResult> GetConfigProduct(int Id)
        {
            var config = await _productService.GetConfigProductDetail(Id);
            return Json(config);
        }

        [HttpPost]
        public async Task<PartialViewResult> ViewDetail(int Id)
        {
            var obj = await _orderService.GetObjectById(Id);
            var data = new ViewDetailObject<OrderModelView>()
            {
                obj = obj,
                CreatedBy = "",
                UpdatedBy = ""
            };
            return PartialView(data);
        }

        [HttpPost]
        public async Task<PartialViewResult> GetListData(RequestData requestData)
        {
            var response = await _orderService.GetListData(requestData);
            return PartialView(response);
        }

        [HttpPost]
        public async Task<JsonResult> GetObjectById(int Id)
        {
            var response = await _orderService.GetObjectById(Id);
            return Json(response);
        }

        [HttpPost]
        public async Task<JsonResult> AddOrUpdate(Order obj, List<OrderDetail> orderDetails)
        {
            var response = await _orderService.AddOrUpdate(obj, orderDetails);
            return Json(new ResponseStatus() { success = response, error = null });
        }

        [HttpPost]
        public async Task<JsonResult> DeleteById(int Id)
        {
            var response = await _orderService.DeleteById(Id);
            return Json(response);
        }
    }
}