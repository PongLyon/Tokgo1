class NotePagesController < ApplicationController
  def show()
    # @note_name = File.dirname(__FILE__)  # params[:file]
    #MD532位加密

  end

  def documents()

  end

  def note()
    @file_text = ''
    if params[:file]
      file_name = params[:file].gsub("note/", '')
      unless @file_info
        @file_info = files
      end
      folder = ""
      @file_info.each do |folders, names|
        name_keys = names.keys
        next unless name_keys.include?(file_name)
        folder = folders
        break
      end

      file = File.join(File.dirname(__FILE__).force_encoding("UTF-8"), "Data/#{folder}/#{file_name}.html")
      @file_text = File.read(file)
    end


  end

  private

  def files

    {
        "Git" => {
            "f8f2f9aedd2df5c4a0aa663c3567a148" => "SourceTree提示Authentication failed for 的解决方案",
            "4ad587f95fc02cf0c074fbd61ae3a23f" => "Git错误信息解决记录",
        },

        "Linux" => {
            "15ce13b9e8d36381b12cd8f381d43536" => "CentOS 7安装gcc,并编辑运行第一个C程序",
        },

        "Rails" => {
            "495f6e9da5663cc6a71461e9f0cee3f6" => "Ruby on Rails部署",
        },

        "RubyForSketchUp" => {
            "0693167f54f9b1b015199aad94f4c5fc" => "在三维空间中：已知矩形的对角两点的坐标 如何知道另外对角两点的坐标",
        },

        "Windows" => {
            "1f492b75971f79736d78b0c0f235fcaa" => "如何在Windows窗口中插入图片",
            "cb2130a84b2edb2b4e840e7b003e553a" => "C++  socket网络编程",
            "3fe92390c76e458dd1cd2b57e04dec93" => "MFC中创建透明画刷",
        }
    }

  end
end