.class public Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field private aqk:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

.field private aql:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 42
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v4

    .line 46
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aqN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    sget-object v1, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aqN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->וּ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aqk:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v4}, Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;->ᵄ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aqk:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    .line 55
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->ᘁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aql:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    .line 56
    return-void
.end method

.method public static ᵧ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBES2Parameters;
    .locals 2

    .line 22
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    return-object v0

    .line 26
    :cond_0
    if-eqz p0, :cond_1

    .line 28
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 70
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aqk:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 73
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aql:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fP()Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aqk:Lorg/spongycastle/asn1/pkcs/KeyDerivationFunc;

    return-object v0
.end method

.method public fQ()Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBES2Parameters;->aql:Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    return-object v0
.end method
