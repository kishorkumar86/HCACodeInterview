using HCACodeInterview.Models;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;

namespace HCACodeInterview
{
    public class HCADBcon : DbContext
    {

        public HCADBcon(DbContextOptions<HCADBcon> options)
        : base(options)
        {
        }

        public DbSet<questionAnswersTable> questionAnswersTable { get; set; }
        public DbSet<FeedBackTable> FeedbackTable { get; set; }
    }

}
