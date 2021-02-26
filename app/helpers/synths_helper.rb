module SynthsHelper


  def display_synths_with_tech(tech)
    if tech
      tag.h1("All synths with #{tech.name}")
    else 
      "Synths Index"
    end
  end

end
