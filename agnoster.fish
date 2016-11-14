function agnoster -d 'Enable theme'
  # Cleanup old variables
  set -e AGNOSTER_SEGMENT_SEPARATOR
  set -e AGNOSTER_SEGMENT_RSEPARATOR

  set -e AGNOSTER_BEFORE_LINE
  set -e AGNOSTER_AFTER_LINE
  set -e AGNOSTER_PROMPT

  set -e AGNOSTER_ICON_ERROR
  set -e AGNOSTER_ICON_ROOT
  set -e AGNOSTER_ICON_BGJOBS

  set -e AGNOSTER_ICON_SCM_BRANCH
  set -e AGNOSTER_ICON_SCM_REF
  set -e AGNOSTER_ICON_SCM_STAGED
  set -e AGNOSTER_ICON_SCM_STASHED

  switch $argv[1]
  case powerline
    set -U AGNOSTER_SEGMENT_SEPARATOR \ue0b0 ' '\ue0b1' '
    set -U AGNOSTER_SEGMENT_RSEPARATOR \ue0b2 \ue0b3

    set -U AGNOSTER_BEFORE_LINE \n
    set -U AGNOSTER_AFTER_LINE \n
    set -U AGNOSTER_PROMPT " "\u276F" "

    set -U AGNOSTER_ICON_ERROR \u2022
    set -U AGNOSTER_ICON_ROOT \u26a1
    set -U AGNOSTER_ICON_BGJOBS \u2699

    set -U AGNOSTER_ICON_SCM_BRANCH \ue0a0
    set -U AGNOSTER_ICON_SCM_REF \u27a6
    set -U AGNOSTER_ICON_SCM_STAGED '…'
    set -U AGNOSTER_ICON_SCM_STASHED '~'
  case '*'
    set -U AGNOSTER_SEGMENT_SEPARATOR '' \u2502
    set -U AGNOSTER_SEGMENT_RSEPARATOR '' ''

    set -U AGNOSTER_BEFORE_LINE ""
    set -U AGNOSTER_AFTER_LINE ""
    set -U AGNOSTER_PROMPT ""

    set -U AGNOSTER_ICON_ERROR \u2022
    set -U AGNOSTER_ICON_ROOT \u26a1
    set -U AGNOSTER_ICON_BGJOBS \u2699

    set -U AGNOSTER_ICON_SCM_BRANCH \u2387
    set -U AGNOSTER_ICON_SCM_REF \u27a6
    set -U AGNOSTER_ICON_SCM_STAGED '…'
    set -U AGNOSTER_ICON_SCM_STASHED '~'
  end
end
