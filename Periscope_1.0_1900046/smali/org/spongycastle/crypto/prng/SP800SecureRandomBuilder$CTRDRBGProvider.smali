.class Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/DRBGProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CTRDRBGProvider"
.end annotation


# instance fields
.field private final aRf:I

.field private final aRh:Lorg/spongycastle/crypto/BlockCipher;

.field private final aRi:I

.field private final aRj:[B

.field private final aeu:[B


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 7

    .line 287
    new-instance v0, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->aRh:Lorg/spongycastle/crypto/BlockCipher;

    iget v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->aRi:I

    iget v3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->aRf:I

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->aRj:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$CTRDRBGProvider;->aeu:[B

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/prng/drbg/CTRSP800DRBG;-><init>(Lorg/spongycastle/crypto/BlockCipher;IILorg/spongycastle/crypto/prng/EntropySource;[B[B)V

    return-object v0
.end method
