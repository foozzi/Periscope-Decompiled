.class public Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private aqd:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->aqd:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 34
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->aqd:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 35
    return-void
.end method

.method public static ᕽ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .locals 2

    .line 40
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    if-eqz v0, :cond_0

    .line 42
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    return-object v0

    .line 44
    :cond_0
    if-eqz p0, :cond_1

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 79
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->aqd:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fI()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->aqd:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    return-object v0
.end method
