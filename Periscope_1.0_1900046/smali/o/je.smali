.class final Lo/je;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/net/InetAddress;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 480
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 480
    move-object v0, p2

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, v0}, Lo/je;->ˊ(Lo/kc;Ljava/net/InetAddress;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/net/InetAddress;)V
    .locals 1

    .line 492
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 493
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 480
    invoke-virtual {p0, p1}, Lo/je;->ﾞ(Lo/jz;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public ﾞ(Lo/jz;)Ljava/net/InetAddress;
    .locals 2

    .line 483
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 484
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 488
    :cond_0
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method
