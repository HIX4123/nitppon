setlocal enabledelayedexpansion

for /L %%i in (1, 1, 150) do (
  set "filename=00%%i"
  set "filename=!filename:~-3!"
  set filename=nitppon.7z.!filename!
  git add !filename!
  git commit -m "splited 7z"
  git push
)

endlocal