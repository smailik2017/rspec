require 'uri/mailto'


class User
  class UserException < StandardError
    def initialize(msg = 'ERROR ERROR ERROR')
      super
    end
  end

  def check_name
    ru_alpha = [*'А'..'я'] << 'ё' << 'Ё'
    return false if f_name.nil? || s_name.nil? || l_name.nil?
    (f_name + s_name + l_name).split('').map { |x| ru_alpha.include?(x) }.all?
  end

  def check_email
    return false unless email =~ URI::MailTo::EMAIL_REGEXP
    true
  end

  def valid?
    raise UserException unless check_email & check_name
    true
  end

  attr_accessor :f_name, :s_name, :l_name, :email

end
