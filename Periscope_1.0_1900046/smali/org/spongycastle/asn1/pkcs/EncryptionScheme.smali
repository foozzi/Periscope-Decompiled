.class public Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 25
    invoke-static {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 26
    return-void
.end method

.method public static ᘁ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptionScheme;
    .locals 2

    .line 30
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    if-eqz v0, :cond_0

    .line 32
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    return-object v0

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 39
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fK()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public fL()Lorg/spongycastle/asn1/ASN1Encodable;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/EncryptionScheme;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->fL()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method
