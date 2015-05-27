.class public Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field aAk:Lorg/spongycastle/asn1/ASN1Enumerated;

.field aAl:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field aAm:Lorg/spongycastle/asn1/DERBitString;

.field aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4

    .line 113
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 116
    :cond_0
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

    .line 120
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Enumerated;->ᵛ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAk:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 122
    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAl:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 127
    add-int/lit8 v3, v3, 0x1

    .line 130
    :cond_2
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->ᓪ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 132
    add-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->ʸ(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAm:Lorg/spongycastle/asn1/DERBitString;

    .line 133
    return-void
.end method

.method public static ג(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 2

    .line 62
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    return-object v0

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 69
    new-instance v0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static ـ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 1

    .line 79
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->ג(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 176
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 178
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAk:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAl:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAl:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 186
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAm:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 188
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public hM()Lorg/spongycastle/asn1/ASN1Enumerated;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAk:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public hN()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAl:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public hO()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aes:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public hP()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->aAm:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method
