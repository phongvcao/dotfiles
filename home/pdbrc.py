import pdb

class Config( pdb.DefaultConfig ):
    sticky_by_default = True
    prompt = '(Pdb)  '
    line_number_color = '32;01'
    filename_color = '33'
    current_line_color = '32'
    pygments_formatter_class = "pygments.formatters.TerminalTrueColorFormatter"
    pygments_formatter_kwargs = {"bg": "dark", "style": "solarizeddark"}

    def setup( self, pdb ):
        pass

    def before_interaction_hook( self, pdb ):
        pass
