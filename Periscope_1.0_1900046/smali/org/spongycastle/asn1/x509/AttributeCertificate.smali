.class public Lorg/spongycastle/asn1/x509/AttributeCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field ayc:Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

.field ayd:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 50
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sequence size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;->ᵒ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->ayc:Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 59
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->ayd:Lorg/spongycastle/asn1/DERBitString;

    .line 60
    return-void
.end method

.method public static ᕝ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttributeCertificate;
    .locals 2

    .line 23
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;

    if-eqz v0, :cond_0

    .line 25
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/AttributeCertificate;

    return-object v0

    .line 27
    :cond_0
    if-eqz p0, :cond_1

    .line 29
    new-instance v0, Lorg/spongycastle/asn1/x509/AttributeCertificate;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/AttributeCertificate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 32
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 89
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 91
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->ayc:Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->aoP:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->ayd:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 95
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public gR()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/AttributeCertificate;->ayc:Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    return-object v0
.end method
