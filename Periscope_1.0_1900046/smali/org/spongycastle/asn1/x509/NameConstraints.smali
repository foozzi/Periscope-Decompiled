.class public Lorg/spongycastle/asn1/x509/NameConstraints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aAg:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

.field private aAh:[Lorg/spongycastle/asn1/x509/GeneralSubtree;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->eT()Ljava/util/Enumeration;

    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->ʵ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1TaggedObject;->eW()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 41
    :sswitch_0
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->ˋ(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAg:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 42
    goto :goto_1

    .line 44
    :sswitch_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ᐝ(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/x509/NameConstraints;->ˋ(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAh:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 47
    :goto_1
    goto :goto_0

    .line 48
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method private ˋ(Lorg/spongycastle/asn1/ASN1Sequence;)[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 3

    .line 78
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/spongycastle/asn1/x509/GeneralSubtree;

    .line 80
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_0

    .line 82
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralSubtree;->ﾆ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralSubtree;

    move-result-object v0

    aput-object v0, v1, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method

.method public static ϊ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/NameConstraints;
    .locals 2

    .line 20
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x509/NameConstraints;

    return-object v0

    .line 24
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/x509/NameConstraints;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/NameConstraints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 29
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .line 104
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAg:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAg:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAh:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAh:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>([Lorg/spongycastle/asn1/ASN1Encodable;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 116
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public hK()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAg:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    return-object v0
.end method

.method public hL()[Lorg/spongycastle/asn1/x509/GeneralSubtree;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/NameConstraints;->aAh:[Lorg/spongycastle/asn1/x509/GeneralSubtree;

    return-object v0
.end method
