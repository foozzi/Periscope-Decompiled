.class public Lorg/spongycastle/jcajce/provider/symmetric/Threefish$ECB_512;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Threefish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB_512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    new-instance v0, Lorg/spongycastle/crypto/engines/ThreefishEngine;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 32
    return-void
.end method
