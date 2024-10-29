using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using HCACodeInterview;
using HCACodeInterview.Models;

namespace HCACodeInterview.Controllers
{
    public class FeedBackTablesController : Controller
    {
        private readonly HCADBcon _context;

        public FeedBackTablesController(HCADBcon context)
        {
            _context = context;
        }

        // GET: FeedBackTables
        public async Task<IActionResult> Index()
        {
            return View(await _context.FeedbackTable.ToListAsync());
        }

        // GET: FeedBackTables/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var feedBackTable = await _context.FeedbackTable
                .FirstOrDefaultAsync(m => m.Id == id);
            if (feedBackTable == null)
            {
                return NotFound();
            }

            return View(feedBackTable);
        }

        // GET: FeedBackTables/Create
        public IActionResult Create()
        {  
        return PartialView("_CreatePartial");
        }

        // POST: FeedBackTables/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ReviewerName,FeedbackText")] FeedBackTable feedBackTable)
        {
            feedBackTable.DateTime = DateTime.Now;
            if (ModelState.IsValid)
            {
                _context.Add(feedBackTable);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(feedBackTable);
        }

        // GET: FeedBackTables/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var feedBackTable = await _context.FeedbackTable.FindAsync(id);
            if (feedBackTable == null)
            {
                return NotFound();
            }
            return View(feedBackTable);
        }

        // POST: FeedBackTables/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,ReviewerName,FeedbackText")] FeedBackTable feedBackTable)
        {
            if (id != feedBackTable.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    feedBackTable.DateTime = DateTime.Now;
                    _context.Update(feedBackTable);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!FeedBackTableExists(feedBackTable.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            return View(feedBackTable);
        }

        // GET: FeedBackTables/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var feedBackTable = await _context.FeedbackTable
                .FirstOrDefaultAsync(m => m.Id == id);
            if (feedBackTable == null)
            {
                return NotFound();
            }

            return View(feedBackTable);
        }

        // POST: FeedBackTables/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var feedBackTable = await _context.FeedbackTable.FindAsync(id);
            if (feedBackTable != null)
            {
                _context.FeedbackTable.Remove(feedBackTable);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool FeedBackTableExists(int id)
        {
            return _context.FeedbackTable.Any(e => e.Id == id);
        }
    }
}
