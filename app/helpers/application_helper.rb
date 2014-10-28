module ApplicationHelper
  def path_to_file(file_path)
    if @theme_name
      "/themes/#{@theme_name}/views/#{file_path}.html.curly"
    else
      "/themes/nome_do_tema/views/#{file_path}.html.curly"
    end
  end
end
