.class public Lorg/spongycastle/jcajce/provider/symmetric/Noekeon$ECB;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/symmetric/Noekeon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/spongycastle/jcajce/provider/symmetric/Noekeon$ECB$1;

    invoke-direct {v0}, Lorg/spongycastle/jcajce/provider/symmetric/Noekeon$ECB$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/spongycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    .line 43
    return-void
.end method
