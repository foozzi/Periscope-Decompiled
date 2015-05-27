.class public Lorg/spongycastle/crypto/agreement/srp/SRP6Client;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected aFB:Ljava/math/BigInteger;

.field protected aFH:Lorg/spongycastle/crypto/Digest;

.field protected aFK:Ljava/math/BigInteger;

.field protected aFL:Ljava/math/BigInteger;

.field protected aFM:Ljava/math/BigInteger;

.field protected aFN:Ljava/math/BigInteger;

.field protected aFO:Ljava/math/BigInteger;

.field protected aFP:Ljava/math/BigInteger;

.field protected aFQ:Ljava/math/BigInteger;

.field protected aFa:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private iT()Ljava/math/BigInteger;
    .locals 6

    .line 92
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFB:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFP:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFL:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFB:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFO:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFN:Ljava/math/BigInteger;

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected iS()Ljava/math/BigInteger;
    .locals 4

    .line 87
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFB:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFa:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFN:Ljava/math/BigInteger;

    .line 79
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFM:Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFN:Ljava/math/BigInteger;

    invoke-static {v0, v1, v2, v3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFP:Ljava/math/BigInteger;

    .line 80
    invoke-direct {p0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->iT()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFQ:Ljava/math/BigInteger;

    .line 82
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ˊ([B[B[B)Ljava/math/BigInteger;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-static {v0, v1, p1, p2, p3}, Lorg/spongycastle/crypto/agreement/srp/SRP6Util;->ˊ(Lorg/spongycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFO:Ljava/math/BigInteger;

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->iS()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFL:Ljava/math/BigInteger;

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFB:Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFL:Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFM:Ljava/math/BigInteger;

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFM:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ˊ(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFK:Ljava/math/BigInteger;

    .line 49
    iput-object p2, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFB:Ljava/math/BigInteger;

    .line 50
    iput-object p3, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 51
    iput-object p4, p0, Lorg/spongycastle/crypto/agreement/srp/SRP6Client;->aFa:Ljava/security/SecureRandom;

    .line 52
    return-void
.end method
