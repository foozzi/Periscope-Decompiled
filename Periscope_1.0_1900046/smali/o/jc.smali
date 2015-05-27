.class final Lo/jc;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/net/URI;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 458
    move-object v0, p2

    check-cast v0, Ljava/net/URI;

    invoke-virtual {p0, p1, v0}, Lo/jc;->ˊ(Lo/kc;Ljava/net/URI;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/net/URI;)V
    .locals 1

    .line 474
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lo/kc;->ᖮ(Ljava/lang/String;)Lo/kc;

    .line 475
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 458
    invoke-virtual {p0, p1}, Lo/jc;->ᐨ(Lo/jz;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public ᐨ(Lo/jz;)Ljava/net/URI;
    .locals 3

    .line 461
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 462
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 463
    const/4 v0, 0x0

    return-object v0

    .line 466
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v2

    .line 467
    const-string v0, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    .line 468
    :catch_0
    move-exception v2

    .line 469
    new-instance v0, Lo/fx;

    invoke-direct {v0, v2}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
