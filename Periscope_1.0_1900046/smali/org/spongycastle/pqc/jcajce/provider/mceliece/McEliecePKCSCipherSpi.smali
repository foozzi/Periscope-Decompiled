.class public Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;
.super Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS512;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS384;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS256;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS224;,
        Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi$McEliecePKCS;
    }
.end annotation


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/spongycastle/pqc/jcajce/provider/util/AsymmetricBlockCipher;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 39
    iput-object p2, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    .line 40
    return-void
.end method


# virtual methods
.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 3

    .line 62
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 64
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 65
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 66
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgh:I

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->bgh:I

    .line 67
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgi:I

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->bgi:I

    .line 68
    return-void
.end method

.method protected ˊ(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3

    .line 49
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    .line 51
    new-instance v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-direct {v0, v2, p3}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    move-object v2, v0

    .line 52
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 53
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 54
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgh:I

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->bgh:I

    .line 55
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    iget v0, v0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->bgi:I

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->bgi:I

    .line 56
    return-void
.end method

.method public ˋ(Ljava/security/Key;)I
    .locals 2

    .line 109
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p1

    check-cast v0, Ljava/security/PublicKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    move-object v1, v0

    goto :goto_0

    .line 115
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {v0}, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McElieceKeysToParams;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;

    move-object v1, v0

    .line 120
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;)I

    move-result v0

    return v0
.end method

.method protected וֹ([B)[B
    .locals 3

    .line 73
    const/4 v1, 0x0

    .line 76
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->וֹ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 81
    goto :goto_0

    .line 78
    :catch_0
    move-exception v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_0
    return-object v1
.end method

.method protected ﹲ([B)[B
    .locals 3

    .line 88
    const/4 v1, 0x0

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/mceliece/McEliecePKCSCipherSpi;->biD:Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePKCSCipher;->ﹲ([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 96
    goto :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :goto_0
    return-object v1
.end method
