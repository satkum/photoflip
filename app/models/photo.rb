class Photo < ActiveRecord::Base
	attr_accessible :caption, :url, :file

	# This method associates the attribute ":file" with a file attachment
	has_attached_file :file, styles: {
		thumb: '100x100>',
		square: '200x200#',
		medium: '300x300>'
	}
end
