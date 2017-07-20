module ApplicationHelper
  def sortable(column, title=nil)
    title ||= column.titleize
    css_class = column == params[:sort] ? "hilite" : nil
    session[:sort] = params[:sort]
    link_to title, {:sort => column}, {:class => css_class}
  end 
end
