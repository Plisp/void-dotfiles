c.content.pdfjs = True
c.aliases = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save'}
c.auto_save.interval = 300000
c.colors.completion.category.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 #888888, stop:1 #505050)'
c.colors.hints.bg = 'qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgba(255, 247, 133, 0.8), stop:1 rgba(255, 197, 66, 0.8))'
c.confirm_quit = ['downloads']
c.content.default_encoding = 'iso-8859-1'
c.content.host_blocking.lists = ['https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts', 'http://someonewhocares.org/hosts/hosts', 'http://winhelp2002.mvps.org/hosts.zip', 'http://malwaredomains.lehigh.edu/files/justdomains.zip', 'https://pgl.yoyo.org/adservers/serverlist.php?hostformat=hosts&mimetype=plaintext']
c.downloads.position = 'bottom'
c.downloads.remove_finished = 2
c.editor.command = ['st', '-e', 'nvim', '{}']
c.fonts.completion.entry = '10pt monospace'
c.fonts.completion.category = 'bold 10pt monospace'
c.fonts.debug_console = '10pt monospace'
c.fonts.downloads = '10pt monospace'
c.fonts.hints = 'bold 10pt monospace'
c.fonts.keyhint = '10pt monospace'
c.fonts.messages.error = '10pt monospace'
c.fonts.messages.info = '10pt monospace'
c.fonts.messages.warning = '10pt monospace'
c.fonts.monospace = '"DejaVu Sans Mono", Inconsolata'
c.fonts.prompts = '10pt monospace'
c.fonts.statusbar = '10pt monospace'
c.fonts.tabs = '10pt monospace'
c.fonts.web.family.cursive = ''
c.fonts.web.family.fantasy = ''
c.fonts.web.family.fixed = ''
c.fonts.web.family.sans_serif = ''
c.fonts.web.family.serif = ''
c.fonts.web.family.standard = ''
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 13
c.fonts.web.size.minimum = 0
c.fonts.web.size.minimum_logical = 6
c.hints.border = '1px solid #E3BE23'
c.hints.chars = 'asdfwehjklui'
c.hints.dictionary = '/usr/share/hunspell/en_US.dic'
c.scrolling.smooth = True
c.tabs.padding = { "bottom": 2, "left": 3, "right": 3, "top": 2 }
c.url.default_page = 'https://google.com/'
c.url.start_pages = ['https://google.com/']
c.zoom.default = '125%'
c.zoom.text_only = True

c.bindings.commands["normal"] = {
        "=": "zoom",
        "+": "zoom-in", 
        "-": "zoom-out",

        "m": "enter-mode set_mark",
        "`": "enter-mode jump_mark",

        ".": "repeat-command",
        "/": "set-cmd-text /",
        "?": "set-cmd-text ?",
        ":": "set-cmd-text :",

        "Q": "quickmark-save",
        "M": "bookmark-add",
        "sp": "set content.proxy 'http://proxy.det.nsw.edu.au:8080'",
        "sP": "set content.proxy system",
        "st": "set-cmd-text -s set -t",

        "<Ctrl-s>": "stop",
        "<Ctrl-w>": "tab-close",
        "<Ctrl-Return>": "follow-selected -t",
        "<Ctrl-r>": "reload",
        "<Ctrl-d>": "scroll-page 0 0.5",
        "<Ctrl-u>": "scroll-page 0 -0.5",

        "v": "enter-mode caret",
        "I": "enter-mode insert",
        "i": "enter-mode passthrough",
        "<Escape>": "clear-keychain ;; search ;; fullscreen --leave",

        "h": "run-with-count 2 scroll left",
        "j": "scroll down",
        "k": "scroll up",
        "l": "run-with-count 2 scroll right",

        "H": "tab-prev",
        "J": "forward",
        "K": "back",
        "L": "tab-next",
        "o": "set-cmd-text -s :open",
        "O": "set-cmd-text :open {url:pretty}",
        "q": "set-cmd-text -s :quickmark-load",

        "n": "search-next",
        "N": "search-prev",

        "f": "hint links current",
        "F": "hint all current",
        ";d": "hint links download",
        ";f": "hint inputs",
        ";y": "hint links yank-primary",
        ";;": "hint --rapid links tab-bg",

        "gg": "scroll-to-perc 0",
        "G": "scroll-to-perc",

        "b": "set-cmd-text -s :buffer",
        "u": "undo",
        "tt": "open -t",
        "tb": "tab-move -",
        "tf": "tab-move +",
        "td": "tab-clone",
        "tp": "tab-pin",
        "tj": "forward -t",
        "tk": "back -t",
        "to": "set-cmd-text -s :open -t",
        "tq": "set-cmd-text -s :quickmark-load -t",

        "]": "navigate next",
        "}": "navigate next -t",
        "[": "navigate prev",
        "{": "navigate prev -t",

        "y": "yank -s pretty-url",
        "Y": "yank -s selection",
        "p": "open -- {primary}",
        "P": "open -b -- {primary}",

        "wd": "download",
        "wh": "open qute://history",
        "wi": "inspector",
        "ws": "view-source",
        "wv": "hint links spawn umpv {hint-url}",
        "wV": "hint --rapid links spawn umpv {hint-url}"
}
