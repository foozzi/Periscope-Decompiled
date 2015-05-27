.class public Lorg/spongycastle/asn1/x509/DigestInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private ayB:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 63
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->ﹸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->ayB:[B

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->ayB:[B

    .line 55
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    return-void
.end method

.method public static ﯦ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/DigestInfo;
    .locals 2

    .line 38
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/DigestInfo;

    if-eqz v0, :cond_0

    .line 40
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    return-object v0

    .line 42
    :cond_0
    if-eqz p0, :cond_1

    .line 44
    new-instance v0, Lorg/spongycastle/asn1/x509/DigestInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 47
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 79
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 82
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->ayB:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public fX()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->agJ:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public hs()[B
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/DigestInfo;->ayB:[B

    return-object v0
.end method
