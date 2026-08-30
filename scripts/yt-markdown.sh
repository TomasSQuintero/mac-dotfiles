ytmd() {
    local url="$1"
    local filename="$2"
    if [[ -z "$url" || -z "$filename" ]]; then
        echo "Usage: ytmd <playlist_url> <output_filename_without_extension>"
        return 1
    fi

    yt-dlp -j --flat-playlist "$url" \
        | jq -r '"- [" + .title + "](" + .url + ")"' \
        > "${filename}.md"

    echo "Exported playlist to ${filename}.md"
}
