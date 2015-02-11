class Squirrel < ActiveRecord::Base
  has_many :branches
  has_many :nuts
  has_many :trees, through: :branches

  def nut_count
    nuts.length
  end

  def tree_count
    trees.length
  end

  def to_hash
    { id:         self.id,
      name:       self.name, 
      tailLength: self.tail_length, 
      treeMail:   self.tree_mail,
      trees:      self.tree_count,
      nuts:       self.nut_count  }
  end
end
