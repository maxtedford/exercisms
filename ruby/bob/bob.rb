class Bob

  def hey(remark)
    remark.gsub!(/[\t]/, "")
    case
      when remark.chars.all? {|l| l == " "}
        "Fine. Be that way!"
      when remark.chars.none? {|l| /[a-z]/i.match(l)}
        if remark[-1] == "?"
          "Sure."
        else
          "Whatever."
        end
      when remark == remark.upcase
        "Whoa, chill out!"
      when remark[-1] ==  "?"
        "Sure."
      else
        "Whatever."
    end
  end
end
