class ChangeBigintToIntegerInTechnologiesTable < ActiveRecord::Migration[5.2]
  def change
  	change_column :technologies, :portfolio_id, :integer
  end
end
