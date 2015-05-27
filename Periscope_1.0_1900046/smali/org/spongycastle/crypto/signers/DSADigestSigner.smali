.class public Lorg/spongycastle/crypto/signers/DSADigestSigner;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Signer;


# instance fields
.field private final aFH:Lorg/spongycastle/crypto/Digest;

.field private final aRZ:Lorg/spongycastle/crypto/DSA;

.field private aSa:Z


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/DSA;Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 31
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aRZ:Lorg/spongycastle/crypto/DSA;

    .line 32
    return-void
.end method

.method private ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 3

    .line 144
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 145
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 146
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private ᒡ([B)[Ljava/math/BigInteger;
    .locals 4

    .line 155
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v3, v0

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public iP()[B
    .locals 5

    .line 92
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aSa:Z

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSADigestSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v2, v0, [B

    .line 98
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 100
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aRZ:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v0, v2}, Lorg/spongycastle/crypto/DSA;->ᵎ([B)[Ljava/math/BigInteger;

    move-result-object v3

    .line 104
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, v3, v0

    const/4 v1, 0x1

    aget-object v1, v3, v1

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/signers/DSADigestSigner;->ˋ(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 106
    :catch_0
    move-exception v4

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to encode signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 137
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 73
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 84
    return-void
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 38
    iput-boolean p1, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aSa:Z

    .line 42
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    .line 44
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    goto :goto_0

    .line 48
    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-object v2, v0

    .line 51
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Signing Requires Private Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Verification Requires Public Key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    invoke-virtual {p0}, Lorg/spongycastle/crypto/signers/DSADigestSigner;->reset()V

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aRZ:Lorg/spongycastle/crypto/DSA;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/DSA;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 64
    return-void
.end method

.method public ᵔ([B)Z
    .locals 5

    .line 115
    iget-boolean v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aSa:Z

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DSADigestSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 121
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 125
    :try_start_0
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/signers/DSADigestSigner;->ᒡ([B)[Ljava/math/BigInteger;

    move-result-object v4

    .line 126
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/DSADigestSigner;->aRZ:Lorg/spongycastle/crypto/DSA;

    const/4 v1, 0x0

    aget-object v1, v4, v1

    const/4 v2, 0x1

    aget-object v2, v4, v2

    invoke-interface {v0, v3, v1, v2}, Lorg/spongycastle/crypto/DSA;->ˊ([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 128
    :catch_0
    move-exception v4

    .line 130
    const/4 v0, 0x0

    return v0
.end method
