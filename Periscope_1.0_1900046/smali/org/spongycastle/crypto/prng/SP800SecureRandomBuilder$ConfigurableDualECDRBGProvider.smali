.class Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;
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
    name = "ConfigurableDualECDRBGProvider"
.end annotation


# instance fields
.field private final aFH:Lorg/spongycastle/crypto/Digest;

.field private final aRf:I

.field private final aRj:[B

.field private final aRk:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

.field private final aeu:[B


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;
    .locals 7

    .line 240
    new-instance v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;->aRk:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    iget-object v2, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;->aFH:Lorg/spongycastle/crypto/Digest;

    iget v3, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;->aRf:I

    iget-object v5, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;->aRj:[B

    iget-object v6, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandomBuilder$ConfigurableDualECDRBGProvider;->aeu:[B

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;-><init>([Lorg/spongycastle/crypto/prng/drbg/DualECPoints;Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V

    return-object v0
.end method
