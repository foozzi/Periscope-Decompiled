.class public Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/jce/provider/BrokenPBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndTwofish;,
        Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES2Key;,
        Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$OldPBEWithSHAAndDES3Key;,
        Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHAAndDES3Key;,
        Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithSHA1AndDES;,
        Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher$BrokePBEWithMD5AndDES;
    }
.end annotation


# instance fields
.field private aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

.field private aWR:I

.field private aXe:Ljava/security/AlgorithmParameters;

.field private aXo:[Ljava/lang/Class;

.field private aZu:I

.field private aZv:I

.field private baU:I

.field private baV:I


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/BlockCipher;IIII)V
    .locals 3

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aXo:[Ljava/lang/Class;

    .line 63
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aZu:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aZv:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aWR:I

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aXe:Ljava/security/AlgorithmParameters;

    .line 85
    new-instance v0, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aKy:Lorg/spongycastle/crypto/BufferedBlockCipher;

    .line 87
    iput p2, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aZu:I

    .line 88
    iput p3, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->aZv:I

    .line 89
    iput p4, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->baU:I

    .line 90
    iput p5, p0, Lorg/spongycastle/jce/provider/BrokenJCEBlockCipher;->baV:I

    .line 91
    return-void
.end method
