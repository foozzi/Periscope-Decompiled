.class public final Lo/bs;
.super Ljava/lang/Object;


# direct methods
.method public static ˊ(Lo/cj;)V
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lo/cj;->ᘥ()Lo/bv;

    move-result-object v0

    invoke-static {v0}, Lo/bn;->ˊ(Lo/bv;)V

    invoke-interface {p0}, Lo/cj;->ᵆ()Lo/dp;

    move-result-object v0

    invoke-static {v0}, Lo/dg;->ˊ(Lo/dp;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v0, Lo/di;

    invoke-direct {v0, v1}, Lo/di;-><init>(Landroid/os/RemoteException;)V

    throw v0

    :goto_0
    return-void
.end method

.method public static ﹺ(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lo/ﺧ;->ᔈ(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lo/dd;->ｰ(Landroid/content/Context;)Lo/cj;
    :try_end_0
    .catch Lo/Ⴡ; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    iget v0, v2, Lo/Ⴡ;->tB:I

    return v0

    :goto_0
    invoke-static {v1}, Lo/bs;->ˊ(Lo/cj;)V

    const/4 v0, 0x0

    return v0
.end method
