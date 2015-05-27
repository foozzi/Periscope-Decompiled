.class public Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/DigestDerivationFunction;


# instance fields
.field private aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private aFF:[B

.field private aFJ:Lorg/spongycastle/crypto/DigestDerivationFunction;

.field private ahI:I


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/generators/KDF2BytesGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aFJ:Lorg/spongycastle/crypto/DigestDerivationFunction;

    .line 37
    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 2

    .line 41
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    move-object v1, v0

    .line 43
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->ahI:I

    .line 45
    invoke-virtual {v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->iQ()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aFF:[B

    .line 46
    return-void
.end method

.method public ᐧ([BII)I
    .locals 7

    .line 58
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 60
    new-instance v0, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aCT:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v2, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 61
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget v2, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->ahI:I

    invoke-static {v2}, Lorg/spongycastle/util/Pack;->ﮃ(I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aFJ:Lorg/spongycastle/crypto/DigestDerivationFunction;

    new-instance v1, Lorg/spongycastle/crypto/params/KDFParameters;

    iget-object v2, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aFF:[B

    new-instance v3, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v3, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/crypto/params/KDFParameters;-><init>([B[B)V

    invoke-interface {v0, v1}, Lorg/spongycastle/crypto/DigestDerivationFunction;->ˊ(Lorg/spongycastle/crypto/DerivationParameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 67
    :catch_0
    move-exception v6

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to initialise kdf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/ECDHKEKGenerator;->aFJ:Lorg/spongycastle/crypto/DigestDerivationFunction;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/DigestDerivationFunction;->ᐧ([BII)I

    move-result v0

    return v0
.end method
