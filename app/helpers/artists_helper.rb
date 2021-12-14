module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_select(artist_id)
    if artist_id.nil?
        select_tag "song[artist_id]",  options_from_collection_for_select(Artist.all, :id, :name)
    else
      label_tag "Artist Name"
      text_field_tag "song[artist_name]"
    end
  end
end
