module ApplicationHelper
    def sortable(column, title = nil)
        title ||= column.titleize
        direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
        link_to title, { sort: column, direction: direction }, { class: "sortable #{'current' if column == params[:sort]} #{direction}" }
    end    
end
