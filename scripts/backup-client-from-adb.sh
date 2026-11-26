#!/usr/bin/env bash
set -euo pipefail

PACKAGE="com.netease.hpmaally"
DEST="${1:-hpma-client-backup}"
mkdir -p "$DEST"

command -v adb >/dev/null || {
  echo "adb is required on the computer running this script" >&2
  exit 1
}

mapfile -t APKS < <(adb shell pm path "$PACKAGE" | tr -d '\r' | sed 's/^package://')
if ((${#APKS[@]} == 0)); then
  echo "$PACKAGE is not visible through ADB" >&2
  exit 1
fi

printf '%s\n' "${APKS[@]}" > "$DEST/device-apk-paths.txt"
for index in "${!APKS[@]}"; do
  remote="${APKS[$index]}"
  name="$(basename "$remote")"
  if [[ -e "$DEST/$name" ]]; then
    name="${index}-$name"
  fi
  echo "Pulling $remote -> $DEST/$name"
  adb pull "$remote" "$DEST/$name"
done

(
  cd "$DEST"
  sha256sum -- *.apk > SHA256SUMS
  sha256sum -c SHA256SUMS
)

echo "Expected known base APK hash:"
echo "0ee00d4145b310d8ca6d7ec6e975afa3bf51108ffcf4f8b94ee694e0667e5bc9  base.apk"
echo "Backup complete: $DEST"
