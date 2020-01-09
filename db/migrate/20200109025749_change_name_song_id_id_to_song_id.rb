class ChangeNameSongIdIdToSongId < ActiveRecord::Migration[6.0]
  def change
    rename_column :billboards_songs, :song_id_id, :song_id
end
end

