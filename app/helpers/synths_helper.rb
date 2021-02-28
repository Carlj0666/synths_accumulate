module SynthsHelper


  def display_synths_with_tech(tech)
    if tech
      tag.h3("All synths with #{tech.name} tech installed:")
    else 
      tag.h3("Synths Index:")
    end
  end

end
