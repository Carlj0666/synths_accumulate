module SynthsHelper


  def display_synths_with_tech(tech)
    if tech
      tag.h3("All synths with #{tech.name} tech installed:")
    else 
      tag.h3("Synths Index:")
    end
  end

  # def if_logged_link_edit_delete(synth)
  #   if logged_in?
  #   link_to("Edit Synth", edit_synth_path(@synth.id))
  #     form_tag synth_path(@synth.id), method: "delete" do
  #     submit_tag "Delete #{@synth.name}"
  #     end
  #   end
  # end

end
