.class public Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/PublicKey;
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private bis:[B

.field private bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 81
    const-string v0, "GMSS"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 124
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/spongycastle/pqc/asn1/PQCObjectIdentifiers;->bdV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lorg/spongycastle/pqc/asn1/ParSet;

    iget-object v3, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qN()I

    move-result v3

    iget-object v4, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v5

    iget-object v6, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qQ()[I

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/spongycastle/pqc/asn1/ParSet;-><init>(I[I[I[I)V

    invoke-virtual {v2}, Lorg/spongycastle/pqc/asn1/ParSet;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/spongycastle/pqc/asn1/GMSSPublicKey;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bis:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/pqc/asn1/GMSSPublicKey;-><init>([B)V

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/jcajce/provider/util/KeyUtil;->ˊ(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "X.509"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMSS public key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bis:[B

    invoke-static {v2}, Lorg/spongycastle/util/encoders/Hex;->ײ([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Height of Trees: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v0

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Layer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WinternitzParameter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " K: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/jcajce/provider/gmss/BCGMSSPublicKey;->bit:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qQ()[I

    move-result-object v1

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-object v3
.end method
