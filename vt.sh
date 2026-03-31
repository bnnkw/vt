vt() {
  case "$#" in
    0)
      vim -c 'terminal ++curwin'
      ;;
    1)
      if [ ! -d "$1" ]; then
        echo "the directory '$1' does not exist" >&2
        return 1
      fi
      cd "$1"
      vim -c 'terminal ++curwin'
      cd "$OLDPWD"
      ;;
    *)
      echo "Usage: vt [directory]" >&2
      return 1
      ;;
  esac
}
