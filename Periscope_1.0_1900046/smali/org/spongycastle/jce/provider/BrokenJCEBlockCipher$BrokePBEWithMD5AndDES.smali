.class public Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithMD5AndDES;
.super Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrokePBEWithMD5AndDES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 558
    move-object v0, p0

    new-instance v1, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/engines/DESEngine;

    invoke-direct {v2}, Lorg/spongycastle/crypto/engines/DESEngine;-><init>()V

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x40

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;IIII)V

    .line 559
    return-void
.end method
