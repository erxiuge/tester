module WeddingsHelper
	def link_to_add_fields(name, f, association)
		new_object = f.object.class.reflect_on_association(association).klass.new
		fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
			render(association.to_s.singularize, :gift_fields => builder)
		end

    link_to name, '#', class: 'col-sm-2 control-label', onclick: "add_fields(this, \"#{association}\", \"#{j(fields)}\")"
	end

end
