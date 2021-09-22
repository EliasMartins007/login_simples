class MyLog
  # classe para logs personalizados elias
  def self.debug(message=nil)# funciona!!
    @my_log ||= Logger.new("#{Rails.root}/log/my.log")
    @my_log.debug(message) unless message.nil?
  end
#fim do exemplo add outros metodos!!!
  #outro metodo 21/09/2021 noite
  def before_save #def self.before_save()
    @my_log.info("Creating user with name #{self.name}")
  end  
  #teste elias 2021  funciona 
  def self.info(message=nil)#(message=nil)
    @my_log ||= Logger.new("#{Rails.root}/log/my.log")
    @my_log.info(message) unless message.nil?
  end  

end    