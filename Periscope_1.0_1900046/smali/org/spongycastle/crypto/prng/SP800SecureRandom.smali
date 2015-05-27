.class public Lorg/spongycastle/crypto/prng/SP800SecureRandom;
.super Ljava/security/SecureRandom;
.source ""


# instance fields
.field private final aQZ:Lorg/spongycastle/crypto/prng/DRBGProvider;

.field private final aRa:Z

.field private final aRb:Ljava/security/SecureRandom;

.field private final aRc:Lorg/spongycastle/crypto/prng/EntropySource;

.field private aRd:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# virtual methods
.method public generateSeed(I)[B
    .locals 1

    .line 68
    new-array v0, p1, [B

    .line 70
    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->nextBytes([B)V

    .line 72
    return-object v0
.end method

.method public nextBytes([B)V
    .locals 5

    .line 50
    move-object v3, p0

    monitor-enter v3

    .line 52
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRd:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aQZ:Lorg/spongycastle/crypto/prng/DRBGProvider;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRc:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/DRBGProvider;->ˊ(Lorg/spongycastle/crypto/prng/EntropySource;)Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRd:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRd:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRa:Z

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->ˊ([B[BZ)I

    move-result v0

    if-gez v0, :cond_1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRd:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRc:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v1}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->ۦ([B)V

    .line 61
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRd:Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRa:Z

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;->ˊ([B[BZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 64
    :goto_0
    return-void
.end method

.method public setSeed(J)V
    .locals 3

    .line 38
    move-object v1, p0

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRb:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRb:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1, p2}, Ljava/security/SecureRandom;->setSeed(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 46
    :goto_0
    return-void
.end method

.method public setSeed([B)V
    .locals 3

    .line 27
    move-object v1, p0

    monitor-enter v1

    .line 29
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRb:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/SP800SecureRandom;->aRb:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->setSeed([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    .line 34
    :goto_0
    return-void
.end method
