ActiveAdmin.register Author do
	active_admin_importable
  sidebar 'Books by this Author', :only => :show do
    table_for Book.joins(:author).where(:author_id => author.id) do |t|
      t.column("Title") { |book| book.name }
    end
  end

index download_links: [:csv, :xlsx]

  csv do
  column :first_name
  column :last_name
end
end