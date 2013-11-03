#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
%w{zsh emacs23 ess jed nkf sqlite3 libsqlite3-0}.each do |pkg|
  package pkg do
    action :install
  end
end
