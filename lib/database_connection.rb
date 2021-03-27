 require 'pg'

 class DatabaseConnection

  def self.setup(dbname)
    @connection = PG.connect(dbname: dbname)
  end 

  def self.query(query)
    @connection.exec(query)
  end

 end 