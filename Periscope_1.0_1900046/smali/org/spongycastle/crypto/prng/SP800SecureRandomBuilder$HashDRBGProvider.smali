.class Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;
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
    name = "HashDRBGProvider"
.end annotation


# instance fields
.field private final aFH:Lorg/spongycastle/crypto/Digest;

.field private final aRf:I

.field private final aRj:[B

.field private final aeu:[B


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 6

    .line 193
    new-instance v0, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;->aFH:Lorg/spongycastle/crypto/Digest;

    iget v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;->aRf:I

    iget-object v4, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;->aRj:[B

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$HashDRBGProvider;->aeu:[B

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/prng/drbg/HashSP800DRBG;-><init>(Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V

    return-object v0
.end method
