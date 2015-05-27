.class public Lorg/spongycastle/asn1/ocsp/OCSPResponse;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field apf:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

.field apg:Lorg/spongycastle/asn1/ocsp/ResponseBytes;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->ᐢ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->apf:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    .line 30
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->ι(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->apg:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    .line 35
    :cond_0
    return-void
.end method

.method public static ৲(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;
    .locals 2

    .line 47
    instance-of v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    return-object v0

    .line 51
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 79
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->apf:Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 83
    iget-object v0, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->apg:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v1, p0, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->apg:Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
