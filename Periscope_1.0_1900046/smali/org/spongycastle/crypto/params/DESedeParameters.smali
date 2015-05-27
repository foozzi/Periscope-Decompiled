.class public Lorg/spongycastle/crypto/params/DESedeParameters;
.super Lorg/spongycastle/crypto/params/DESParameters;
.source ""


# direct methods
.method public static ᵢ([BII)Z
    .locals 2

    .line 34
    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_1

    .line 36
    invoke-static {p0, v1}, Lorg/spongycastle/crypto/params/DESParameters;->ⁱ([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    return v0

    .line 34
    :cond_0
    add-int/lit8 v1, v1, 0x8

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
