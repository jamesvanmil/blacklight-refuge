require 'csv'
namespace :gallery do
  desc "import gallery images and metadata"
  task:import => :environment do
    begin
      CSV.foreach("#{Rails.root}/tmp/hor_images.csv", headers: true) do |row|
        gallery_image = GalleryImage.new
        gallery_image.title = row['title']
        gallery_image.creator = row['creator']
        gallery_image.date = row['date']
        gallery_image.description = row['description']
        gallery_image.source_text = row['source_text']
        gallery_image.source_link = row['source_link']
        gallery_image.format = row['format']
        gallery_image.subject = row['subject']
        gallery_image.image = open("#{Rails.root}/tmp/hor_images/#{row['file_name']}")
        gallery_image.save
        puts '::success::'
      end
      rescue Errno::ENOENT => e
        puts "\n*** Import file \"hor_images.csv\" not found, or broken image link in csv.\n\tSee README for details, or: \n"
        raise e
      end
  end
end

