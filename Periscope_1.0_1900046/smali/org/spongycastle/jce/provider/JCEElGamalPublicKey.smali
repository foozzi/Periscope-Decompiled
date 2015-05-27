.class public Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/crypto/interfaces/DHPublicKey;
.implements Lorg/spongycastle/jce/interfaces/ElGamalPublicKey;


# instance fields
.field private aPZ:Ljava/math/BigInteger;

.field private aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;


# direct methods
.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .line 127
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aPZ:Ljava/math/BigInteger;

    .line 128
    new-instance v0, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    .line 129
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "ElGamal"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 5

    .line 105
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/oiw/OIWObjectIdentifiers;->apP:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/asn1/oiw/ElGamalParameter;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v3}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v4}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/spongycastle/asn1/oiw/ElGamalParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aPZ:Ljava/math/BigInteger;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/KeyUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 100
    const-string v0, "X.509"

    return-object v0
.end method

.method public getParams()Ljavax/crypto/spec/DHParameterSpec;
    .locals 3

    .line 115
    new-instance v0, Ljavax/crypto/spec/DHParameterSpec;

    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v1}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ElGamalParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public nG()Lorg/spongycastle/jce/spec/ElGamalParameterSpec;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEElGamalPublicKey;->aXb:Lorg/spongycastle/jce/spec/ElGamalParameterSpec;

    return-object v0
.end method
