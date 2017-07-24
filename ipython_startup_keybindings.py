# This is the keybinding to fix "Option(Alt) + Arrowkeys" under iTerm2's xterm Key Preset.
# Since from IPython 5+, it uses pyreadline and doesn't honor inputrc anymore.
# To activate this, link this file under ~/.ipython/profile_default/startup/
# This is tested under IPython 6.0 with Python 3.6

from IPython import get_ipython
from prompt_toolkit.keys import Keys
from prompt_toolkit.key_binding.bindings.named_commands import get_by_name
____ip = get_ipython()
# print(ip)
if getattr(____ip, 'pt_cli', None):
    # Meta + ^
    ____ip.pt_cli.application.key_bindings_registry.add_binding(
        Keys.Escape, *'[1;9A',
        )(get_by_name('previous-history'))
    # Meta + v
    ____ip.pt_cli.application.key_bindings_registry.add_binding(
        Keys.Escape, *'[1;9B',
        )(get_by_name('next-history'))
    # Meta + ->
    ____ip.pt_cli.application.key_bindings_registry.add_binding(
        Keys.Escape, *'[1;9C',
        )(get_by_name('forward-word'))
    # Meta + <-
    ____ip.pt_cli.application.key_bindings_registry.add_binding(
        Keys.Escape, *'[1;9D',
        )(get_by_name('backward-word'))

del get_ipython, Keys, get_by_name
del ____ip
