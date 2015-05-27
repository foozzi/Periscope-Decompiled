.class Lo/ĩ;
.super Lo/ｼ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\uff7c<Lo/\u010b$if<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic jK:Lo/ċ;


# direct methods
.method constructor <init>(Lo/ċ;I)V
    .locals 0

    .line 26
    iput-object p1, p0, Lo/ĩ;->jK:Lo/ċ;

    invoke-direct {p0, p2}, Lo/ｼ;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected ˊ(Lo/ċ$if;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u010b$if<TA;>;TB;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lo/ċ$if;->release()V

    .line 30
    return-void
.end method

.method protected synthetic ᐝ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 26
    move-object v0, p1

    check-cast v0, Lo/ċ$if;

    invoke-virtual {p0, v0, p2}, Lo/ĩ;->ˊ(Lo/ċ$if;Ljava/lang/Object;)V

    return-void
.end method
