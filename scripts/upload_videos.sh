SOURCE="/home/lid/videos-camera/Main"
DEST="gdrive:/videos_plantas"

while true; do
    rclone copy "$SOURCE" "$DEST" \
        --include "*.MP4" \
        --min-age 2m \
        --log-level INFO

    sleep 60
done