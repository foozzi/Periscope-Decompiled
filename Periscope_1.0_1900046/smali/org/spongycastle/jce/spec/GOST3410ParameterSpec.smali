.class public Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;
.implements Lorg/spongycastle/jce/interfaces/GOST3410Params;


# instance fields
.field private bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

.field private bbX:Ljava/lang/String;

.field private bbY:Ljava/lang/String;

.field private bbZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 69
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v4, 0x0

    .line 32
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/spongycastle/asn1/cryptopro/GOST3410NamedParameters;->ˏ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 42
    goto :goto_0

    .line 34
    :catch_0
    move-exception v5

    .line 36
    invoke-static {p1}, Lorg/spongycastle/asn1/cryptopro/GOST3410NamedParameters;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    .line 37
    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {v6}, Lorg/spongycastle/asn1/cryptopro/GOST3410NamedParameters;->ˏ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;

    move-result-object v4

    .line 44
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no key parameter set for passed in name/OID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4}, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4}, Lorg/spongycastle/asn1/cryptopro/GOST3410ParamSetParameters;->getA()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    .line 54
    iput-object p1, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbX:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbY:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    .line 76
    sget-object v0, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahg:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbY:Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;)Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;
    .locals 4

    .line 124
    invoke-virtual {p0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fp()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fr()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fp()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fq()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/asn1/cryptopro/GOST3410PublicKeyAlgParameters;->fr()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 102
    instance-of v0, p1, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    if-eqz v0, :cond_2

    .line 104
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;

    move-object v2, v0

    .line 106
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbY:Ljava/lang/String;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    iget-object v1, v2, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 112
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    invoke-virtual {v0}, Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbY:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public oL()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbX:Ljava/lang/String;

    return-object v0
.end method

.method public oM()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbY:Ljava/lang/String;

    return-object v0
.end method

.method public oN()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbZ:Ljava/lang/String;

    return-object v0
.end method

.method public oO()Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410ParameterSpec;->bbW:Lorg/spongycastle/jce/spec/GOST3410PublicKeyParameterSetSpec;

    return-object v0
.end method
