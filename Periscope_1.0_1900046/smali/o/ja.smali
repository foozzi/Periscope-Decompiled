.class final Lo/ja;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/lang/StringBuffer;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 422
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 422
    move-object v0, p2

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Lo/ja;->ˊ(Lo/kc;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 433
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 434
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 422
    invoke-virtual {p0, p1}, Lo/ja;->ـ(Lo/jz;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public ـ(Lo/jz;)Ljava/lang/StringBuffer;
    .locals 2

    .line 425
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 426
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 427
    const/4 v0, 0x0

    return-object v0

    .line 429
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
