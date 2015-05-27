.class public Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;
.super Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source ""


# instance fields
.field aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 4

    .line 31
    new-instance v2, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 35
    const-string v0, "DER"

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 37
    :catch_0
    move-exception v3

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error encoding ElGamalParameters"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 1

    .line 46
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 51
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4

    .line 74
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "DHParameterSpec required to initialise a ElGamal algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-eqz v0, :cond_1

    .line 81
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    goto :goto_0

    .line 85
    :cond_1
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    move-object v3, v0

    .line 87
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 89
    :goto_0
    return-void
.end method

.method protected engineInit([B)V
    .locals 4

    .line 97
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/asn1/ASN1Primitive;->ՙ([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->ᔅ(Ljava/lang/Object;)Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    move-result-object v3

    .line 99
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    goto :goto_0

    .line 101
    :catch_0
    move-exception v3

    .line 103
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid ElGamal Parameter encoding."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :catch_1
    move-exception v3

    .line 107
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid ElGamal Parameter encoding."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :goto_0
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3

    .line 116
    invoke-virtual {p0, p2}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->ᕪ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    invoke-virtual {p0, p1}, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->engineInit([B)V

    goto :goto_0

    .line 122
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :goto_0
    return-void
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "ElGamal Parameters"

    return-object v0
.end method

.method protected ᐧ(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3

    .line 58
    const-class v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-object v0

    .line 62
    :cond_0
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-ne p1, v0, :cond_1

    .line 64
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/elgamal/AlgorithmParametersSpi;->aXa:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0

    .line 67
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to ElGamal parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
