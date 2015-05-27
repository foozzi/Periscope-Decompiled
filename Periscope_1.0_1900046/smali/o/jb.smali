.class final Lo/jb;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/net/URL;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 440
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 440
    move-object v0, p2

    check-cast v0, Ljava/net/URL;

    invoke-virtual {p0, p1, v0}, Lo/jb;->ˊ(Lo/kc;Ljava/net/URL;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/net/URL;)V
    .locals 1

    .line 452
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 453
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 440
    invoke-virtual {p0, p1}, Lo/jb;->ᐧ(Lo/jz;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public ᐧ(Lo/jz;)Ljava/net/URL;
    .locals 3

    .line 443
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 444
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 445
    const/4 v0, 0x0

    return-object v0

    .line 447
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 448
    const-string v0, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
