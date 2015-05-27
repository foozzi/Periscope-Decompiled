.class public abstract Lo/anq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ˊ(Lo/fz;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 15
    invoke-virtual {p0, p1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v1}, Lo/fw;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 19
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method protected static ˋ(Lo/fz;Ljava/lang/String;)I
    .locals 2

    .line 23
    invoke-virtual {p0, p1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v1}, Lo/fw;->l()I

    move-result v0

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected static ˎ(Lo/fz;Ljava/lang/String;)J
    .locals 3

    .line 31
    invoke-virtual {p0, p1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v2

    .line 32
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v2}, Lo/fw;->k()J

    move-result-wide v0

    return-wide v0

    .line 35
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected static ˏ(Lo/fz;Ljava/lang/String;)Ljava/math/BigInteger;
    .locals 2

    .line 39
    invoke-virtual {p0, p1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v1}, Lo/fw;->j()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object v0
.end method

.method protected static ᐝ(Lo/fz;Ljava/lang/String;)D
    .locals 3

    .line 48
    invoke-virtual {p0, p1}, Lo/fz;->เ(Ljava/lang/String;)Lo/fw;

    move-result-object v2

    .line 49
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lo/fw;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v2}, Lo/fw;->i()D

    move-result-wide v0

    return-wide v0

    .line 52
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
