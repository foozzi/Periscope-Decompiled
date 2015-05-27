.class public Lorg/spongycastle/crypto/tls/NamedCurve;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValid(I)Z
    .locals 1

    .line 56
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1c

    if-le p0, v0, :cond_1

    :cond_0
    const v0, 0xff01

    if-lt p0, v0, :cond_2

    const v0, 0xff02

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Ꮀ(I)Z
    .locals 1

    .line 62
    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    .line 66
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 68
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0xff01 -> :sswitch_0
        0xff02 -> :sswitch_0
    .end sparse-switch
.end method
