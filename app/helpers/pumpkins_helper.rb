module PumpkinsHelper

def sorting(col)
	title = col.titleize

	sortord = col == params[:sort] && params[:sortord] == "asc" ? "desc" : "asc"

	link_to title, :sort => col, :sortord => sortord


end

end
