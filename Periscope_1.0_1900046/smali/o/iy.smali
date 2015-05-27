.class final Lo/iy;
.super Lo/gk;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/gk<Ljava/math/BigInteger;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Lo/gk;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Lo/kc;Ljava/lang/Object;)V
    .locals 1

    .line 384
    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, v0}, Lo/iy;->ˊ(Lo/kc;Ljava/math/BigInteger;)V

    return-void
.end method

.method public ˊ(Lo/kc;Ljava/math/BigInteger;)V
    .locals 1

    .line 398
    invoke-virtual {p1, p2}, Lo/kc;->ˊ(Ljava/lang/Number;)Lo/kc;

    .line 399
    return-void
.end method

.method public synthetic ˋ(Lo/jz;)Ljava/lang/Object;
    .locals 1

    .line 384
    invoke-virtual {p0, p1}, Lo/iy;->ˍ(Lo/jz;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ˍ(Lo/jz;)Ljava/math/BigInteger;
    .locals 3

    .line 386
    invoke-virtual {p1}, Lo/jz;->J()Lo/kb;

    move-result-object v0

    sget-object v1, Lo/kb;->NB:Lo/kb;

    if-ne v0, v1, :cond_0

    .line 387
    invoke-virtual {p1}, Lo/jz;->nextNull()V

    .line 388
    const/4 v0, 0x0

    return-object v0

    .line 391
    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lo/jz;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 392
    :catch_0
    move-exception v2

    .line 393
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
