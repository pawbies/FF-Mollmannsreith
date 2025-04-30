class String
  def germanize
    self.humanize
        .gsub("ae", "ä")
        .gsub("oe", "ö")
        .gsub("ue", "ü")
  end
end
