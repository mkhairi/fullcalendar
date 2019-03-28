require "bundler/gem_tasks"

source_dir = "fullcalendar-src" 

namespace :javascripts do
  
  desc "Copy #{source_dir}/fullcalendar/packages"
  task :copy do
    rm_rf "vendor/assets/javascripts/fullcalendar"
    src_dir = "#{source_dir}/fullcalendar-scheduler-4.0.1/packages/."
    tgt_dir = "vendor/assets/javascripts/fullcalendar/"
    mkdir_p tgt_dir
    cp_r src_dir, tgt_dir
    Dir.glob("#{tgt_dir}/**/*.css").each do |file|
     rm file
   end
    #cp "#{source_dir}/dist/js/fullcalendar.js", "assets/javascripts"
  end
  desc "Setup javascript assets"
  task setup: [:copy]
end

namespace :stylesheets do
  desc "Copy #{source_dir}/css/"
  task :copy do
    rm_rf "vendor/assets/stylesheets/fullcalendar"
    src_dir = "#{source_dir}/fullcalendar-scheduler-4.0.1/packages/."
    tgt_dir = "vendor/assets/stylesheets/fullcalendar/"
    mkdir_p tgt_dir
    cp_r src_dir, tgt_dir
    Dir.glob("#{tgt_dir}/**/*.js").each do |file|
      rm file
    end
  end

  desc "Setup stylesheet assets"
  task setup: [:copy]
end


desc "Remove minified file .min"
task :cleanup do
 Dir.glob("vendor/assets/**/*.min.*").each do |file|
   rm file
 end
end

desc "Setup or update assets files"
task setup: ["javascripts:setup", "stylesheets:setup", "cleanup"]
