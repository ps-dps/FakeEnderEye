from beet import Context

def beet_default(ctx: Context):

    comment = """# Credit to Dominexis (Dominexis#3010)
# they shared this function in the MCC Discord (https://discord.gg/QAFXFtZ)
# https://discord.com/channels/154777837382008833/157097006500806656/846088771493036072
"""
    ctx.data.functions['fee:locate'].prepend(comment)
