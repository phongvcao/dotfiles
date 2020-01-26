import pdb

class Config( pdb.DefaultConfig ):
    sticky_by_default = True

    def setup(self, pdb):
        pass

    def before_interaction_hook(self, pdb):
        pass
