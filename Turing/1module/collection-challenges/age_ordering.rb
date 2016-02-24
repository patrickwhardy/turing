require 'pry'
class AgeOrdering
  def initialize
    @data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
  end

  def ascending_names
    list = ''
    list << (@data[1])[0] + ", "
    list << (@data[5])[0] + ", "
    list << (@data[2])[0] + ", "
    list << (@data[4])[0] + ", "
    list << (@data[3])[0] + ", "
    list << (@data[0])[0]
    list
  end

  def ascending_other
    new_list = @data.sort_by { |age| age[1]}
    names = ''
    new_list.each do |name|
      names << name[0] + ", "
    end
    names
  end

  def name_age
    info_list = ''
    @data.each do |info|
      info_list << info[0] + ' (' + info[1].to_s + '), '
    end
    info_list
  end

  def alphabetical
    alphabetical_array = @data.sort_by {|name| name[0]}
    new_list = alphabetical_array.sort_by { |age| age[1]}
    new_list
  end

  def make_hash
    hash = {}
    @data.each do |info|
      if hash.has_key?(info[1])
        hash[info[1]] << (', ' + info[0])
      else
      hash.merge!({info[1] => info[0]})
    end
    end
    hash
  end

end
binding.pry
