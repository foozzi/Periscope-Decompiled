.class public Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private agu:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/DERBitString;Lorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 5

    .line 59
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-static {p1}, Lorg/spongycastle/util/BigIntegers;->ᵎ(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 62
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 65
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 67
    if-eqz p3, :cond_0

    .line 69
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 72
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 77
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 33
    return-void
.end method

.method private ґ(I)Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 101
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Encodable;

    move-object v2, v0

    .line 105
    instance-of v0, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_0

    .line 107
    move-object v0, v2

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-object v3, v0

    .line 108
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 110
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eY()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/asn1/ASN1Encodable;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public gq()Ljava/math/BigInteger;
    .locals 4

    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->agu:Lorg/spongycastle/asn1/ASN1Sequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    move-object v3, v0

    .line 84
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public gr()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/sec/ECPrivateKeyStructure;->ґ(I)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method
