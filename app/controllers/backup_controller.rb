class BackupController < ApplicationController

  def all
    filename = `script/backup`
    pathname = "#{Rails.root}/backup/#{filename.gsub(/\n/, '')}"
    send_file pathname
    `script/nuke`
  end

end
