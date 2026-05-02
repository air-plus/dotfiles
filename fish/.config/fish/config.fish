if status is-interactive
    zoxide init fish | source # Zoxide 集成

    fastfetch -c examples/31.jsonc # 开屏 fastfetch
    starship init fish | source # 初始化 Starship
end
