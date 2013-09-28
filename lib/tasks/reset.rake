  task :reset do
    puts "=== Dropping ==="
    Rake::Task["db:drop"].invoke
    puts "=== Creating ==="
    Rake::Task["db:create"].invoke
    puts "=== Migrating ==="
    Rake::Task["db:migrate"].invoke
    puts "=== Seeding ==="
    Rake::Task["db:seed"].invoke
    puts "=== Preparing Test DB ==="
    Rake::Task["db:test:prepare"].invoke
  end
