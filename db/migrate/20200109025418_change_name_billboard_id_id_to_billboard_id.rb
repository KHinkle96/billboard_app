class ChangeNameBillboardIdIdToBillboardId < ActiveRecord::Migration[6.0]
  def change
      rename_column :billboards_songs, :billboard_id_id, :billboard_id
  end
end
